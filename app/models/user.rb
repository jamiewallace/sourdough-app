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
end
