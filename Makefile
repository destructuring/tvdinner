all: ready

ready:
	@bundle check 2>&1 >/dev/null || { bundle --local --path vendor/bundle > /dev/null && bundle check; }
	@mkdir -p var/chef/backup var/chef/cache/checksums var/chef/data_bags var/chef/checksums var/chef/node var/chef/reports var/chef/sandboxes
	@ln -nfs ../../roles var/chef/roles

cook:
	@bundle exec chef-local -c etc/chef/solo.rb -o tvdinner
