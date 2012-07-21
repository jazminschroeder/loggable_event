require 'rails/generators/migration'
class LoggableEventGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)
  
  def generate_model
    copy_file 'log.rb', 'app/models/log.rb'
    migration_template 'create_logs.rb', 'db/migrate/create_logs.rb'
  end
  
end
  
  
