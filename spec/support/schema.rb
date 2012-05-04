ActiveRecord::Schema.define do
  self.verbose = false

  create_table :logs, :force => true do |t|
    t.integer :loggable_id
    t.string  :loggable_type
    t.integer :user_id
    t.string  :event
    t.text    :content
    t.timestamps
  end  
  
  create_table :test_models, :force => true do |t|
    t.string :name
    t.timestamps
  end  
  
  create_table :users, :force => true do |t|
    t.string :name
    t.timestamps
  end
  
end