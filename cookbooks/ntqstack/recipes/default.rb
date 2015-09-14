#
# Cookbook Name:: ntqstack
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Including apache2 recipe to install default apache2 configuration, mod status added through default attributes file

include_recipe 'apache2'

web_app node['ntqstack']['vhost_name'] do
  template 'web_app.conf.erb'  
  server_name node['ntqstack']['vhost_name']
  docroot node['ntqstack']['docroot']
  server_admin node['ntqstack']['server_admin']
  directory_options node['ntqstack']['directory_options']
end
