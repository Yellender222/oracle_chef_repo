#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



#Chef::Log.info(node['def']['greeting'])

#objItem = data_bag_item("mydatabag","my_ubuntu_170417_node1");

#Chef::Log.info("This is my new data bag item #{objItem['monitor_config']['datacenter']}")


#Chef::Log.info("This is my new data bag item #{objItem['monitor_config']['datacenter']}")
admins = data_bag('mydatabag')
admins.each do |login|
  admin = data_bag_item('mydatabag', login)
  if node.name == admin.id
   Chef::Log.info("I am in #{node.name}")
   chef_data_bag_item "#{node.name}" do
	  #datacenter node.name
	  action :delete # see actions section below
	end
  end  
end
