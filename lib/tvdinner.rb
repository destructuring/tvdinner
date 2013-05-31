class TVDinner
end

class Chef::Config
  def self.local_config shome
    sandbox_path platform_specific_path("#{shome}/var/chef/sandboxes")
    checksum_path platform_specific_path("#{shome}/var/chef/checksums")
    file_cache_path platform_specific_path("#{shome}/var/chef/cache")
    file_backup_path platform_specific_path("#{shome}/var/chef/backup")
    node_path platform_specific_path("#{shome}/var/chef/node")
    role_path platform_specific_path("#{shome}/var/chef/roles")
    data_bag_path platform_specific_path("#{shome}/var/chef/data_bags")
    client_key platform_specific_path("#{shome}/etc/chef/client.pem")
    validation_key platform_specific_path("#{shome}/etc/chef/validation.pem")
    signing_ca_cert platform_specific_path("#{shome}/var/chef/ca/cert.pem")
    signing_ca_key platform_specific_path("#{shome}/var/chef/ca/key.pem")
    cache_options({ :path => platform_specific_path("#{shome}/var/chef/cache/checksums") })
  end

  def self.bundler_config more_paths=[]
    # look in bundler gems for cookbooks, which are peers to lib/
    # for every gem/xxx/lib, look for gem/xxx/cookbooks
    bundler_paths = :.collect do |x|
      File.join(File.expand_path("..", x), "cookbooks")
    end.select {|x| File.directory? x } # return existing directories

    cookbook_path = Array(more_paths).concat(bundler_paths)
  end
end
