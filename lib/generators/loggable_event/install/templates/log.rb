class Log < ActiveRecord::Base
  belongs_to :loggable, :polymorphic => true


  scope :by_event, lambda{ |event_name| where('logs.event like ?', "%#{event_name}%") }
  scope :by_user, lambda{ |user_id| where('logs.user_id = ?', user_id)}
  scope :by_loggable_type, lambda{ |loggable_type| where('logs.loggable_type = ?', loggable_type)}
  
  belongs_to :user
  
end