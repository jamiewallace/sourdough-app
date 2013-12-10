class Message < ActiveRecord::Base
  attr_accessible :user_id_from, :user_id_to, :content, :read, :active
end