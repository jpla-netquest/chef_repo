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
sources=data_bag('apt_sources')
sources.each do |repo|
    source=data_bag_item('apt_sources', repo)
    apt_repository source['id'] do
    uri source['uri']
    components source['components']
    distribution source['distribution']
    key source['key']
    action :add
    deb_src source['deb_src']
  end
end
