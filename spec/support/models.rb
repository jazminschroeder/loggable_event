class TestModel < ActiveRecord::Base
  include LoggableEvent
end  

class User < ActiveRecord::Base
  def self.current
    User.first
  end
end


 