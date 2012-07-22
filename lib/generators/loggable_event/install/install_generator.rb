require 'rails/generators/migration'
require 'rails/generators/active_record' 
module LoggableEvent
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
  
      def generate_model
        copy_file 'log.rb', 'app/models/log.rb'
        migration_template 'create_logs.rb', 'db/migrate/create_logs.rb'
        say "Start logging!"
      end
      
      def self.next_migration_number(path)
        ActiveRecord::Generators::Base.next_migration_number(path)
      end
      
    end
  end
end  
  
