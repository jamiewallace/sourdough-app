class CreateMessagesTable < ActiveRecord::Migration
  def up
    create_table :messages 
    add_column :messages, :user_id_from, :integer
    add_column :messages, :user_id_to, :integer
    add_column :messages, :content, :text
    add_column :messages, :read, :boolean
    add_column :messages, :active, :boolean
    add_timestamps :messages
  end

  def down
    drop_table :messages
  end
end
