#!/bin/bash

/usr/bin/wget https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_amd64.tar.gz
/usr/bin/tar -xvzf frp_0.48.0_linux_amd64.tar.gz
cd frp_0.48.0_linux_amd64
/usr/bin/rm -fr frps.ini
/usr/bin/tee frps.ini > /dev/null <<EOL
[common]
bind_port = 8080
EOL

if [[ -f "$(/usr/bin/pwd)/frps" ]] ; then 
    ./frps -c ./frps.ini &
fi 
 

