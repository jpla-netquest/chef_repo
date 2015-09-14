#
# Cookbook Name:: ntqbase
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#Including default ntp recipe to install service and start it
include_recipe "ntp"
#Including default openssh recipe to install openssh-server and configure it listening to all IP's
include_recipe "openssh::default"
#Adding apt sources depending on apt_sources databag
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
