User.delete_all
Image.delete_all


file1 = File.open(File.join(Rails.root,"/app/assets/images/neha.jpg"))
file2 = File.open(File.join(Rails.root,"/app/assets/images/jamie.jpg"))
file3 = File.open(File.join(Rails.root,"/app/assets/images/alex.jpg"))
file4 = File.open(File.join(Rails.root,"/app/assets/images/adam.jpg"))
file5 = File.open(File.join(Rails.root,"/app/assets/images/sd1.jpg"))
file6 = File.open(File.join(Rails.root,"/app/assets/images/sd2.jpeg"))
file7 = File.open(File.join(Rails.root,"/app/assets/images/sd3.jpg"))
file8 = File.open(File.join(Rails.root,"/app/assets/images/sd4.jpg"))
file9 = File.open(File.join(Rails.root,"/app/assets/images/sd5.jpg"))
file10 = File.open(File.join(Rails.root,"/app/assets/images/sd6.jpeg"))
file11 = File.open(File.join(Rails.root,"/app/assets/images/sd7.jpg"))
file12 = File.open(File.join(Rails.root,"/app/assets/images/sd8.jpeg"))


#remote_image_url

user1 = User.create!(username: "NeNe", first_name: "Neha", last_name: "Shah", avatar: file1, first_line_address: "9 Back Hill", second_line_address: "", town_city: "London", postcode: "EC1R 5EN", country: "UK", description: "CSS supremo", have_need: 'need', email: "neshah07@gmail.com", password: "password", password_confirmation: "password", role: "admin")

user2 = User.create!(username: "Jamtista", first_name: "Jamie", last_name: "Wallace", avatar: file2, first_line_address: "12 Aquinas Street", second_line_address: "SE1 8AE", town_city: "London", postcode: "", country: "UK", description: "Professional coder", have_need: 'need', email: "wallacejamiec@gmail.com", password: "password", password_confirmation: "password", role: "admin")

user3 = User.create!(username: "HamHam", first_name: "Alex", last_name: "Hamlin", avatar: file3, first_line_address: "13 Eyre Street Hill", second_line_address: "", town_city: "London", postcode: "EC1R 5ET", country: "UK", description: "A shit baker", have_need: 'have', email: "alexham100@aol.com", password: "password", password_confirmation: "password")

user4 = User.create!(username: "DamDam", first_name: "Adam", last_name: "Buchan", avatar: file4, first_line_address: "4-5 Bonhill Street", second_line_address: "", town_city: "London", postcode: "EC2A 4BX", country: "UK", description: "A master baker", have_need: 'have', email: "adam.buchan@gmail.com", password: "password", password_confirmation: "password")

image1= Image.create!(user_id: 1, image: file5)
image2= Image.create!(user_id: 1, image: file6)
image3= Image.create!(user_id: 2, image: file7)
image4= Image.create!(user_id: 2, image: file8)
image5= Image.create!(user_id: 3, image: file9)
image6= Image.create!(user_id: 3, image: file10)
image7= Image.create!(user_id: 4, image: file11)
image8= Image.create!(user_id: 4, image: file12)

message1 = Message.create(sender_id: user1.id, recipient_id: user2.id, content: "Hello Jamie, from Neha")
# Alice messages Bob
message2 = Message.create(sender_id: user2.id, recipient_id: user1.id, content: "Hello Neha, from Jamie")
# Alice also messages Kate
message3 = Message.create(sender_id: user2.id, recipient_id: user3.id, content: "Hello Alex, from Jamie")


# t.string   "email",                  :default => "", :null => false
#     t.string   "encrypted_password",     :default => "", :null => false
#     t.string   "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer  "sign_in_count",          :default => 0,  :null => false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.string   "current_sign_in_ip"
#     t.string   "last_sign_in_ip"
#     t.string   "confirmation_token"
#     t.datetime "confirmed_at"
#     t.datetime "confirmation_sent_at"
#     t.string   "unconfirmed_email"
#     t.datetime "created_at",                             :null => false
#     t.datetime "updated_at",                             :null => false
#     t.string   "username"
#     t.string   "first_name"
#     t.string   "last_name"
#     t.string   "avatar"
#     t.string   "first_line_address"
#     t.string   "second_line_address"
#     t.string   "town_city"
#     t.string   "postcode"
#     t.string   "country"
#     t.text     "description"
#     t.string   "give_take"
#     t.float    "lat"
#     t.float    "lon"