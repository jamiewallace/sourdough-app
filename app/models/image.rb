class Image < ActiveRecord::Base
  attr_accessible :user_id, :image

  belongs_to :user
end