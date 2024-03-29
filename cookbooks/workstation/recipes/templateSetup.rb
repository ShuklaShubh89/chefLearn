package 'tree' do
  action :install
end 

package 'ntp'

package 'git' do
  action :install
end

package 'nano'

node['ipaddress']
node['memory']['total']

template '/etc/motd' do
 source 'motd.erb'
 variables(
   :name => 'shubham' 
  )
 action :create
 owner 'root'
 group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end 
