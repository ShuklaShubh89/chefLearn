package 'httpd' do
  action :install
end 

node['ipaddress']
node['hostname']

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service 'httpd' do
  action [ :enable, :start ] 
end
