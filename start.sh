#!/bin/bash
if [ ! -f /usr/bin/bitcrystald ]; then
        wget https://github.com/bitcrystal/bitcrystal_v20/raw/update14/bitcrystal.install.sh
        chmod 755 bitcrystal.install.sh
        ./bitcrystal.install.sh
        bitcrysl_conf_update.sh
        bitcrystald
fi
apt-get install mysql-server mysql-client
apt-get install python2.7-dev
apt-get install python-pip
pip install quark_hash
apt-get install python-crypto
apt-get install python-mysqldb
apt-get install python-zope.interface python-twisted python-twisted-web
apt-get install screen
screen -dmS p2pool-bitcrystal-server
screen -S p2pool-bitcrystal-server -X stuff "python run_p2pool.py --net quarkcoin --fee 2"
screen -S p2pool-bitcrystal-server -X stuff "\015"
screen -S p2pool-bitcrystal-server -X stuff "\015"
screen -S p2pool-bitcrystal-server -X stuff "\015"
screen -rx p2pool-bitcrystal-server
