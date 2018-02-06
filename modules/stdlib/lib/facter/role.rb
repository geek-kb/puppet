Facter.add(:role) do
    confine :kernel  => :linux
    setcode do
        Facter::Util::Resolution.exec("sh /etc/facter/facts.d/facter_roles.sh")
    end
end
