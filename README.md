# Install
System require: Recommend to use the system as Ubuntu, Hiveos.

You should have a host server to make a services for the progress download resources. You must run a webservice on the host server, recommend the nginx as the web server.

Download the script of `install.sh`, and the package `minerproxy_rel.tgz` and `minerproxy_update.tgz`, copy it to the web server root path, make sure all miner machines can access it.

Enter the miner machine system, install the progress, you can use the command as:  
 `curl http://$HOST_SERVER_URL/install.sh > /hive/install.sh && chmod 755 /hive/install.sh && /hive/install.sh http://$HOST_SERVER_URL/minerproxy_rel.tgz`
  Replace the $HOST_SERVER_URL to YOUR WEB SERVER PATH.
  
# Cmd

open the mproxy to work:  
`mproxy --switch=on`

close the mproxy:  
`mproxy --switch=off`

restart the mproxy:  
`mproxy --restart`

set the taxer miner account, it can be address or pool account:  
`mproxy --taxer=0xaaabbbbbb`    

update the proxy soft:  
`mproxy --update='http://10.10.10.10'`

print the config and status:  
`mproxy --info`

set the tax rate, for example set to 5%:  
`mproxy --taxrate=0.05`

set local hashrate, for example set to 95%:  
`mproxy --setlocalrate=0.95`


