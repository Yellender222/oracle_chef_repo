#
# Cookbook Name:: oracle_170417_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


Chef::Log.info("Hello Yellender222")
Chef::Log.debug("Hello Yellender debug2222")

#remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
#  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
#  action :create
#end

#execute "git_install_step#{node['oracle_170417_cookbook']['git_installer']}" do
#  command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
#  not_if { File.exists?("C:/Program Files/Git/#{node['oracle_170417_cookbook']['git_installer']}") }



directory "#{node['oracle_170417_cookbook']['basedir']}" do
 owner "#{node['oracle_170417_cookbook']['owner']}"
 group "#{node['oracle_170417_cookbook']['group']}"
 mode '0755'
 recursive true
 action :create
end

cookbook_file "#{node['oracle_170417_cookbook']['basedir']}/index.html" do
 source 'index.html'
 owner "#{node['oracle_170417_cookbook']['owner']}"
 group "#{node['oracle_170417_cookbook']['group']}"
 mode '0755'
 action :create
end