default['apache']['default_modules'] = ['mod_status','mod_proxy','mod_proxy_ajp','mod_slotmem', 'mod_manager','mod_proxy_cluster']
default['apache']['mod_proxy_cluster']['listen_ip_port'] = '0.0.0.0:6666'
default['apache']['mod_proxy_cluster']['cluster'] = 'mycluster'
default['apache']['mod_proxy_cluster']['persist_slots'] = 'on'
default['apache']['mod_proxy_cluster']['vhost'] = '*:6666'
default['apache']['mod_proxy_cluster']['allow_from'] = '10.150.0.0/16 10.150.0.0/16 127.0.0.1'
default['apache']['srv_tokens'] = 'Prod'
default['apache']['srv_signature'] = 'Off'
default['apache']['trace'] = 'off'
default['apache']['srv_name'] = 'dev-sm2-mpuchol.awsdev.netquestapps.com'
default['apache']['timeout'] = 150
default['ntqstack']['vhost_name'] = 'local-myapp-test.netquest-apps.com'
default['ntqstack']['server_admin'] = 'sistemas@netquest.com'
default['ntqstack']['docroot'] = '/var/www'
default['ntqstack']['directory_options'] = '-ExecCGI -FollowSymLinks -Includes -Indexes -MultiViews -SymLinksIfOwnerMatch'
default['ntqstack']['loglevel'] = 'warn'
default['ntqstack']['srv_signature'] = 'Off'
default['ntqstack']['proxy_requests'] = 'Off'
default['ntqstack']['proxy_requests'] = 'Off'


 
