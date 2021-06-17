# Install
System require: Recommend to use the system as Ubuntu, Hiveos.

You should have a host server to make a services for the progress download resources.

Download the script of `install.sh`, and the package `minerproxy_rel.tgz` and `minerproxy_update.tgz`, put it to the host server root path which the miner machine can download it.

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


