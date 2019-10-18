package 'httpd' do
  action :install
end 

node['ipaddress']
node['hostname']

file '/var/www/html/index.html' do
  content "<h1>IP Address: #{node['ipaddress']} </h1> 
<h1>Hostname: #{node['hostname']}  </h1>"
end

service 'httpd' do
  action [ :enable, :start ] 
end
