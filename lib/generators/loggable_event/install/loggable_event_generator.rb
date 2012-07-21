require 'rails/generators/migration'
module LoggableEvent
  module Generators
    class LoggableEventGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('../templates', __FILE__)
  
      def generate_model
        say "copying log.rb"
        copy_file 'log.rb', 'app/models/log.rb'
        migration_template 'create_logs.rb', 'db/migrate/create_logs.rb'
      end
  
    end
  end
end  
  
