apt-get update
wget -nv https://packages.chef.io/files/stable/chef-server/13.0.17/ubuntu/16.04/chef-server-core_13.0.17-1_amd64.deb
dpkg -i chef-server-core_13.0.17-1_amd64.deb
sudo chef-server-ctl reconfigure --chef-license=accept
rm -f /vagrant/admin.pem /vagrant/myorg-validator.pem
sudo chef-server-ctl user-create admin admin admin admin@example.com 'Passw@rd' -f /vagrant/admin.pem
sudo chef-server-ctl org-create myorg 'My Organization' --association_user admin -f /vagrant/myorg-validator.pem -a admin
sudo chef-server-ctl install chef-manage
sudo chef-manage-ctl reconfigure --accept-license
#echo $PASSWORD > /tmp/pass
