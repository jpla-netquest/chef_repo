#
# Cookbook Name:: ntqbase
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "ntp"
include_recipe "openssh::default"

apt_repository 'netquest-private' do
  uri 'http://ntq.ubuntu.private.s3-website-us-east-1.amazonaws.com/'
  components ['main']
  distribution 'precise'
  key 'http://ntq.ubuntu.private.s3-website-us-east-1.amazonaws.com/public.gpg.key'
  action :add
  deb_src false
end

