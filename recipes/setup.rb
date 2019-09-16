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

file '/etc/motd' do
 content "This server is the property of Chef
 HOSTNAME: #{node['ipaddress']}  
 IPADDRESS: #{node['hostname']} 
 CPU: #{node['cpu']['0']['model_name']}
 MEM: #{node['memory']['total']}" 
 action :create
 owner 'root'
 group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end 
