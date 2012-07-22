require 'loggable_event'
require 'database_cleaner'

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
                                        :database => File.dirname(__FILE__) + '/support/loggable_event.sqlite3')
load File.dirname(__FILE__) + '/support/schema.rb'
load File.dirname(__FILE__) + '/support/models.rb'                                  
load File.dirname(__FILE__) + '/../lib/generators/loggable_event/install/templates/log.rb'

DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.before(:each) do
    DatabaseCleaner.clean
  end  
end        