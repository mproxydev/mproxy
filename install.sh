apt install php -y
rm /data/minerproxy_rel -Rf
hive_path="/hive/"
cd ${hive_path}
rm minerproxy_rel.tgz
wget http://47.118.52.4:9501/mproxy/minerproxy_rel.tgz
tar zxvf minerproxy_rel.tgz
cd minerproxy_rel
cp ./phpext/swoole.so.2.2 /usr/lib/php/20170718/swoole.so
echo "extension=swoole.so" > /etc/php/7.2/cli/conf.d/20-swoole.ini
cp ./phpext/tonyenc.so /usr/lib/php/20170718/tonyenc.so
echo "extension=tonyenc.so" > /etc/php/7.2/cli/conf.d/20-tonyenc.ini
chmod 755 ./mproxy.sh
cp ./mproxy.sh /usr/bin/mproxy -f
cp ./mproxy.service /etc/systemd/system/
cp ./mproxy.local /etc/
chmod 755 /etc/mproxy.local
systemctl enable mproxy

cd ${hive_path}
rm minerproxy_rel.tgz

systemctl start mproxy.service


/usr/bin/mproxy --sethiveconf --noproxy=0
/usr/bin/mproxy --restart
/usr/bin/mproxy --info
