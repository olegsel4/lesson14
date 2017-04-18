rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum install -y puppetserver
systemctl restart network
cp /vagrant/autosign.conf /etc/puppetlabs/puppet 	
systemctl start puppetserver
source ~/.bashrc
cp -R /vagrant/modules/* /etc/puppetlabs/code/environments/production/modules
chmod -R 0777 /etc/puppetlabs/code/environments/production/modules/jboss/files
cp /vagrant/site.pp /etc/puppetlabs/code/environments/production/manifests
