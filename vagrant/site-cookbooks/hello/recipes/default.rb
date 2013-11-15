#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

log "Hello World!!!!!!!!!!!!!"

execute "hello_world" do
  command <<"EOS"
    echo "Hello World." > /home/vagrant/hello.txt
    mkdir /home/vagrant/node
    cp /vagrant/files/app.js /home/vagrant/node/app.js
    cp -f /vagrant/files/iptables-settings /etc/sysconfig/iptables
    service iptables restart
    
EOS
#↑は行頭に書かないとエラー
end

