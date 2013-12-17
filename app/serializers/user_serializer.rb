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
              :username,
              :show_path,
              :avatar_url

  def show_path
    user_path(object)
  end
end
