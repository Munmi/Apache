package 'httpd' do
	action :install
end

cookbook_file '/var/www/html/index.html' do
 source 'index.html'
 action :create

#template '/var/www/html/index.html' do
#	source 'index.html.erb'
end

service 'httpd' do
	action [ :enable, :start ]
end
