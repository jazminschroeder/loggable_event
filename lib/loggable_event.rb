require 'loggable_event/version'
require 'active_record'
module LoggableEvent
  
  def self.included(base)
    base.send :include, InstanceMethods
    base.extend ClassMethods
    base.has_many :logs, :as => :loggable
  end
  
  module InstanceMethods
    def log(event, content = nil)
      logs.create(:event => event, :content => content, :user_id => current_user_id)
    end
  end
  
  module ClassMethods
    def logs_by_user(user_id)
      Log.by_loggable_type(self.to_s).by_user(user_id)
    end
    
    def logs_by_event(event)
      Log.by_loggable_type(self.to_s).by_event(event)
    end
  end
  
  private
  def current_user_id
    User.current.nil? ? nil : User.current.id
  end
end
