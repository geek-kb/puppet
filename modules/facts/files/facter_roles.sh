#!/bin/bash

ROLE="none"
if [[ $HOSTNAME =~ ^adv[[:digit:]]+ ]]; then
	ROLE="advertiser"
elif [[ $HOSTNAME =~ ^buncher[[:digit:]]+ ]]; then
	ROLE="buncher"
elif [[ $HOSTNAME =~ ^cls[[:digit:]]+ ]]; then
	ROLE="classifier"
elif [[ $HOSTNAME =~ ^ctrl[[:digit:]]+ ]]; then
	ROLE="controller"
elif [[ $HOSTNAME =~ ^ctrlsim[[:digit:]]+ ]]; then
  ROLE="controllersimulator"
elif [[ $HOSTNAME =~ ^do[[:digit:]]+ ]]; then
	ROLE="dataorigin"
elif [[ $HOSTNAME =~ ^edgeupdater[[:digit:]]+ ]]; then
	ROLE="edgeupdater"
elif [[ $HOSTNAME =~ ^edge[[:digit:]]+ ]]; then
	ROLE="edgeaccounter"
elif [[ $HOSTNAME =~ ^grb[[:digit:]]+ ]]; then
	ROLE="grabber"
elif [[ $HOSTNAME =~ ^pnd[[:digit:]]+ ]]; then
	ROLE="pender"
elif [[ $HOSTNAME =~ ^translator[[:digit:]]+ ]]; then
	ROLE="translator"
elif [[ $HOSTNAME =~ ^scraper[[:digit:]]+ ]]; then
	ROLE="scraper"
elif [[ $HOSTNAME =~ ^selvmnj[[:digit:]]+ ]]; then
	ROLE="scraper"
elif [[ $HOSTNAME =~ ^sgproxy[[:digit:]]+ ]]; then
	ROLE="sgproxy"
elif [[ $HOSTNAME =~ ^nyproxy[[:digit:]]+ ]]; then
	ROLE="nyproxy"
elif [[ $HOSTNAME =~ ^ny4aproxy[[:digit:]]+ ]]; then
	ROLE="ny4aproxy"
elif [[ $HOSTNAME =~ ^ams2proxy[[:digit:]]+ ]]; then
	ROLE="amsproxy"
elif [[ $HOSTNAME =~ ^laxproxy[[:digit:]]+ ]]; then
	ROLE="laxproxy"
#elif [[ $HOSTNAME =~ ^sgftp[[:digit:]]+ ]]; then
#	ROLE="ftp"
elif [[ $HOSTNAME =~ ^ucl[[:digit:]]+ ]]; then
	ROLE="urlcleaner"
elif [[ $HOSTNAME =~ ^orgcms[[:digit:]]+ ]]; then
	ROLE="orgcms"
elif [[ $HOSTNAME =~ ^tictac[[:digit:]]* ]]; then
	ROLE="tictac"
elif [[ $HOSTNAME =~ ^pnmweb[[:digit:]]* ]]; then
	ROLE="verificationui"
elif [[ $HOSTNAME =~ ^proxyui[[:digit:]]* ]]; then
	ROLE="proxyui"
elif [[ $HOSTNAME =~ ^symphony[[:digit:]]* ]]; then
	ROLE="symphonyui"
elif [[ $HOSTNAME =~ ^taxonomy[[:digit:]]* ]]; then
	ROLE="taxonomyui"
elif [[ $HOSTNAME =~ ^peermngui[[:digit:]]* ]]; then
	ROLE="peermngui"
elif [[ $HOSTNAME =~ ^pgdb[[:digit:]]* ]]; then
	ROLE="pgdb"
elif [[ $HOSTNAME =~ ^ruleng[[:digit:]]* ]]; then
	ROLE="ruleengine"
elif [[ $HOSTNAME =~ ^rsweb[[:digit:]]* ]]; then
  ROLE="rswebserver"
elif [[ $HOSTNAME =~ ^rs[[:digit:]]* ]]; then
	ROLE="reportservice"
elif [[ $HOSTNAME =~ ^hadoop-dn[[:digit:]]* ]]; then
	ROLE="hadoopdn"
elif [[ $HOSTNAME =~ ^hadoop-jn[[:digit:]]* ]]; then
	ROLE="hadoopjn"
elif [[ $HOSTNAME =~ ^hadoop-nn[[:digit:]]* ]]; then
	ROLE="hadoopnn"
elif [[ $HOSTNAME =~ ^hadooper[[:digit:]]* ]]; then
	ROLE="hadooper"
elif [[ $HOSTNAME =~ ^orgcmsui[[:digit:]]* ]]; then
	ROLE="orgcmsui"
elif [[ $HOSTNAME =~ .*mq[[:digit:]]* ]]; then
  ROLE="activemq"
elif [[ $HOSTNAME =~ ^ctgmgmt[[:digit:]]* ]]; then
  ROLE="ctgmgmt"
elif [[ $HOSTNAME =~ ^akamaiftp[[:digit:]]* ]]; then
  ROLE="akamaiftp"
elif [[ $HOSTNAME =~ ^puppetclient[[:digit:]]* ]]; then
  ROLE="puppet"
elif [[ $HOSTNAME =~ ^puppetclient ]]; then
  ROLE="puppet"
elif [[ $HOSTNAME =~ ^puppetmaster ]]; then
  ROLE="puppetmaster"
elif [[ $HOSTNAME =~ ^systran[[:digit:]]* ]]; then
  ROLE="systran"
elif [[ $HOSTNAME =~ ^appmonitor[[:digit:]]* ]]; then
  ROLE="appmonitor"
elif [[ $HOSTNAME =~ ^demoui[[:digit:]]* ]]; then
  ROLE="demoui"
elif [[ $HOSTNAME =~ ^dash[[:digit:]]* ]]; then
  ROLE="dash"
elif [[ $HOSTNAME =~ ^compsvc[[:digit:]]* ]]; then
  ROLE="componentservice"
elif [[ $HOSTNAME =~ ^entsvc[[:digit:]]* ]]; then
  ROLE="entityservice"
elif [[ $HOSTNAME =~ ^ops[[:digit:]]+ ]]; then
  ROLE="operations"
elif [[ $HOSTNAME =~ ops[[:digit:]]+ ]]; then
  ROLE="ops"
elif [[ $HOSTNAME =~ ny.*ftp[[:digit:]]+ ]]; then
  ROLE="nyftp"
elif [[ $HOSTNAME =~ ams2ftp[[:digit:]]+ ]]; then
  ROLE="amsftp"
elif [[ $HOSTNAME =~ sgftp[[:digit:]]+ ]]; then
  ROLE="sgftp"
elif [[ $HOSTNAME =~ .*smtp.*[[:digit:]]+ ]]; then
  ROLE="smtp"
elif [[ $HOSTNAME =~ ^trends[[:digit:]]+ ]]; then
  ROLE="trends"
elif [[ $HOSTNAME =~ ^repo[[:digit:]]+ ]]; then
  ROLE="repo"
elif [[ $HOSTNAME =~ ^benchmark[[:digit:]]+ ]]; then
  ROLE="benchmark"
elif [[ $HOSTNAME =~ ^nas[[:digit:]]+ ]]; then
  ROLE="nas"
elif [[ $HOSTNAME =~ ^selbi[[:digit:]]+ ]]; then
  ROLE="selbi"
fi


echo "role=$ROLE"
