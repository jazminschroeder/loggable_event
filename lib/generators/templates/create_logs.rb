class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.string :event, :limit => 50, :default => "" 
      t.text :content
      t.references :loggable, :polymorphic => true
      t.references :user
      t.timestamps
    end

    add_index :logs, :loggable_type
    add_index :logs, :loggable_id
    add_index :logs, :user_id
  end

  def self.down
    drop_table :logs
  end
end