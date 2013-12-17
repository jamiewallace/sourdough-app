class UserSerializer < ActiveModel::Serializer
  attributes  :id,
              :country,
              :created_at,
              :description,
              :email,
              :first_line_address,
              :first_name,
              :have_need,
              :id,
              :last_name,
              :lat,
              :lon,
              :postcode,
              :role,
              :second_line_address,
              :town_city,
              :updated_at,
              :username
              # :user_path

  def user_path
    user_path
  end
end
