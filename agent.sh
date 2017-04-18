rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum install -y puppet-agent
systemctl restart network
echo "server = puppetserver.minsk.epam.com" >> /etc/puppetlabs/puppet/puppet.conf
echo "192.168.100.50 puppetserver.minsk.epam.com" >> /etc/hosts
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
