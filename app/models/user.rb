class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :first_name, :last_name, :avatar, :first_line_address, :second_line_address, :town_city, :postcode, :country, :description, :lat, :lon, :have_need, :role
  # attr_accessible :title, :body
  mount_uploader :avatar, ImageUploader
  geocoded_by :address, :latitude  => :lat, :longitude => :lon
  after_validation :geocode


  has_many :images

  def address
    [first_line_address, second_line_address, town_city, postcode, country].compact.join(', ')
  end

  # MESSAGES
  has_many :messages_sent, :class_name => 'Message', :foreign_key => 'sender_id'
  has_many :messages_received, :class_name => 'Message', :foreign_key => 'recipient_id'

  def all_messages
    [self.messages_sent, self.messages_received].flatten
  end

  def messages_with_user other_user_id
    sent     = self.messages_sent.where("recipient_id = ?", other_user_id)
    received = self.messages_received.where("sender_id = ?", other_user_id)

    self.set_as_read(received)

    [sent, received].flatten.sort_by(&:created_at)
  end

  def set_as_read messages
    messages.each do |message|
      message.is_read = true
      message.save
    end
  end

  def contact_list
    User.find_all_by_id [users_contacted, users_contacted_by]
  end

  def users_contacted
    self.messages_sent.pluck(:recipient_id)   # Returns ids of users has user has sent messages to
  end

  def users_contacted_by
    self.messages_received.pluck(:sender_id)  # Returns ids of users who've messaged this user
  end

  
end
