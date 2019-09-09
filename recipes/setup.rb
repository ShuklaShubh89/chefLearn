package 'tree' do
  action :install
end 

package 'ntp'

package 'git' do
  action :install
end

package 'nano'

file '/etc/motd' do
 content 'This server is the property of Shubham'
 action :create
 owner 'root'
 group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end 
