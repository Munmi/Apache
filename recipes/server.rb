package 'httpd' do
	action :install
end

#cookbook_file '/var/www/html/index.html' do
# source 'index.html'
 #action :create

remote_file '/var/www/html/Munmi.png' do
	source "https://s3.ap-south-1.amazonaws.com/munmitest/DSC_0008.JPG"
	action :create
end
template '/var/www/html/index.html' do
	source 'index.html.erb'
end

service 'httpd' do
	action [ :enable, :start ]
end
