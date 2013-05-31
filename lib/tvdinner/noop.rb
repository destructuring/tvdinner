class Chef
  module Mixin # Checksum
    module Checksum
      def checksum(file)
        return "f" * 64
      end
    end
  end
  class Provider # Macports 
    class Package
      class Macports < Chef::Provider::Package
        def install_package(name, version)
        end

        def purge_package(name, version)
        end

        def remove_package(name, version)
        end

        def upgrade_package(name, version)
        end

        private

        def current_installed_version
          "1.2.3"
        end

        def macports_candidate_version
          "1.2.3"
        end
      end
    end
  end
  class Provider # Directory
    class Directory < Chef::Provider::File
      def define_resource_requirements
      end

      def action_create
      end

      def action_delete
      end
    end
  end
  class Provider # Execute
    class Execute < Chef::Provider
      def action_run
        true
      end
    end
  end
  class Provider # Template
    class Template < Chef::Provider::File
      def action_create
      end
    end
  end
  class Provider # File
    class File < Chef::Provider
      def diff_current(temp_path)
        [ "(no diff)" ]
      end 

      def define_resource_requirements
      end

      def action_create
      end

      def action_delete
      end

      def action_touch
      end
    end
  end
  class Provider # CookbookFile
    class CookbookFile < Chef::Provider::File
      def action_create
      end
    end
  end
  class Provider # Dscl Group
    class Group
      class Dscl < Chef::Provider::Group
        def create_group
        end
        
        def manage_group
        end
        
        def remove_group
        end
      end
    end
  end
  class Provider # Dscl User
    class User
      class Dscl < Chef::Provider::User
        def create_user
        end
        
        def manage_user
        end
        
        def remove_user
        end

        def lock_user
        end
        
        def unlock_user
        end
      end
    end
  end
  class Provider # Script
    class Script < Chef::Provider::Execute
      def set_owner_and_group
      end
    end
  end
  class Provider # Service
    class Service < Chef::Provider
      def run_action (action=nil)
      end

      def action_enable
      end

      def action_disable
      end

      def action_start
      end

      def action_stop
      end

      def action_restart
      end

      def action_reload
      end
    end
  end
  class Provider # Rubygems
    class Package
      class Rubygems < Chef::Provider::Package
        def install_package(name, version)
        end

        def upgrade_package(name, version)
        end

        def remove_package(name, version)
        end

        def purge_package(name, version)
        end
      end
    end
  end
  class Provider # Cron
    class Cron < Chef::Provider
      def cron_different?
        false
      end

      def action_create
      end

      def action_delete
      end
    end
  end
  class Provider # Link
    class Link < Chef::Provider
      def action_create
      end

      def action_delete
      end
    end
  end
  class Provider # RemoteFile
    class RemoteFile < Chef::Provider::File
      def action_create
      end

      def current_resource_matches_target_checksum?
        true
      end

      def matches_current_checksum?(candidate_file)
        true
      end
    end
  end
  class Provider # Deploy
    class Deploy < Chef::Provider
      def action_deploy; end
      def action_force_deploy; end
      def action_rollback; end
    end
  end
end
