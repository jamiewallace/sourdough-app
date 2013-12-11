class Image < ActiveRecord::Base
  attr_accessible :user_id, :image, :username, :first_name, :last_name, :avatar, :first_line_address, :second_line_address, :town_city

  belongs_to :user
  mount_uploader :image, ImageUploader
end