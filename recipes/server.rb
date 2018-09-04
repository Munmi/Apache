package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content "<html><h1>Hello World</h1>
		<h1>hostname #{node['hostname']}</h1>
		<h1>ip #{node['ipaddress']}</h1></html>"
end

service 'httpd' do
	action [ :enable, :start ]
end
