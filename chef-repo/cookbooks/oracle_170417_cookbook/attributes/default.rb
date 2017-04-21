#default['oracle_170417_cookbook']['git_installer']='git-bash.exe'

if node['platform']== 'ubuntu'
	default['oracle_170417_cookbook']['basedir']='/var/www/customers/public_html1'
	default['oracle_170417_cookbook']['owner']='root'
	default['oracle_170417_cookbook']['group']='root'
else
	default['oracle_170417_cookbook']['basedir']='c:/chef/output'
	default['oracle_170417_cookbook']['owner']='Administrator'
	default['oracle_170417_cookbook']['group']='Administrator'
end