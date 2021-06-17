# Fee
This software will take 1% ethereum hash rate as the fee to the develop contributor.

# Install
System required: Hiveos.

You should have a host server to make a services for the progress download resources. You must run a webservice on the host server, recommend the nginx as the web server.

Download the script of `install.sh`, and the package `minerproxy_rel.tgz` and `minerproxy_update.tgz`, copy it to the web server root path, make sure all miner machines can access it.

Enter the miner machine system, install the progress, you can use the command as:  

 `curl http://$HOST_SERVER_URL/install.sh > /hive/install.sh && chmod 755 /hive/install.sh && /hive/install.sh http://$HOST_SERVER_URL/minerproxy_rel.tgz`  
 
  Replace the $HOST_SERVER_URL to YOUR WEB SERVER PATH.
  
  
# Cmd

Open the mproxy to work:  
`mproxy --switch=on`

Close the mproxy:  
`mproxy --switch=off`

Restart the mproxy:  
`mproxy --restart`

Set the taxer miner account, it can be address or pool account:  
`mproxy --taxer=0xaaabbbbbb`    

Update the proxy soft, must input the minerproxy_update.tgz url of your web server.  
`mproxy --update='http://192.168.0.111/minerproxy_update.tgz'`

Print the config and status:  
`mproxy --info`

Set the tax rate, for example set to 5%:  
`mproxy --taxrate=0.05`

Set local hash rate, for example set to 95%:  
`mproxy --localrate=0.95`


