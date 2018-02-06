#!/bin/bash
if [[ $(whoami) != 'root' ]]; then
  echo "Run as root!"
  exit 1
fi
yum install vim tree git -y
read -r -p "what's your name?" name
fqdn="${name}-puppetmaster.intcollege.private"
host="#{name}-puppetmaster"
sed -i "s| localhost | $fqdn $host localhost |g" /etc/hosts
echo $fqdn > /etc/hostname
hostname $fqdn
sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum -y install puppetserver
sed -i 's|2g|256m|g' /etc/sysconfig/puppetserver
git clone https://github.com/geek-kb/puppet.git /tmp/puppet
mkdir -p /etc/puppetlabs/puppet/hiera/production/hieradata/{OBSOLETE,domains,fqdns,roles}
cp -f /tmp/puppet/hiera.yaml /etc/puppetlabs/puppet/
systemctl start puppetserver
export PATH=$PATH:/opt/puppetlabs/bin | tee -a /root/.bash_profile
cat <<EOF >> /etc/puppetlabs/puppet/puppet.conf
[agent]
server = $fqdn
EOF
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
/opt/puppetlabs/bin/puppet agent -t




#ami-0878aa70
