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
file13 = File.open(File.join(Rails.root,"/app/assets/images/gerry.jpg"))
file14 = File.open(File.join(Rails.root,"/app/assets/images/jonchambers.jpg"))
file15 = File.open(File.join(Rails.root,"/app/assets/images/david.jpg"))
file16 = File.open(File.join(Rails.root,"/app/assets/images/julien.jpg"))


#remote_image_url

user1 = User.create!(username: "NeNe", first_name: "Neha", last_name: "Shah", avatar: file1, first_line_address: "9 Back Hill", second_line_address: "", town_city: "London", postcode: "EC1R 5EN", country: "UK", description: "If you give me some sourdough starter I'll be eternally grateful.  I need lessons too!", have_need: 'need', email: "neshah07@gmail.com", password: "password", password_confirmation: "password", role: "admin")

user2 = User.create!(username: "Jamtista", first_name: "Jamie", last_name: "Wallace", avatar: file2, first_line_address: "12 Aquinas Street", second_line_address: "SE1 8AE", town_city: "London", postcode: "", country: "UK", description: "Desperately seeking a sourdough starter with a good sense of humour.", have_need: 'need', email: "wallacejamiec@gmail.com", password: "password", password_confirmation: "password", role: "admin")

user3 = User.create!(username: "HamHam", first_name: "Alex", last_name: "Hamlin", avatar: file3, first_line_address: "13 Eyre Street Hill", second_line_address: "", town_city: "London", postcode: "EC1R 5ET", country: "UK", description: "Happy to share my yeast culture with all and sundry, especially the ladies!", have_need: 'have', email: "alexham100@aol.com", password: "password", password_confirmation: "password")

user4 = User.create!(username: "DamDam", first_name: "Adam", last_name: "Buchan", avatar: file4, first_line_address: "4-5 Bonhill Street", second_line_address: "", town_city: "London", postcode: "EC2A 4BX", country: "UK", description: "I've been known to bake a mean loaf of bread in my time, and can share my skills...", have_need: 'have', email: "adam.buchan@gmail.com", password: "password", password_confirmation: "password")

user5 = User.create!(username: "Davido", first_name: "David", last_name: "Grilli", avatar: file15, first_line_address: "", second_line_address: "", town_city: "Caracas", postcode: "", country: "Venezuela", description: "The best bread maker in Venezuela who would love to share his knowledge with aspiring bakers.", have_need: 'need', email: "david@david.com", password: "password", password_confirmation: "password")

user6 = User.create!(username: "JonJon", first_name: "Jon", last_name: "Chambers", avatar: file14, first_line_address: "", second_line_address: "", town_city: "Sheffield", postcode: "", country: "UK", description: "An aspiring bread maker from Sheffield who would like to get hold of some starter locally.", have_need: 'need', email: "jon@jon.com", password: "password", password_confirmation: "password")

user7 = User.create!(username: "Gerry", first_name: "Geraud", last_name: "Mathe", avatar: file13, first_line_address: "", second_line_address: "", town_city: "Paris", postcode: "", country: "France", description: "I think baguette is the best bread in the world, but I'm prepared to try this sourdough thing.", have_need: 'need', email: "gerry@gerry.com", password: "password", password_confirmation: "password")

user7 = User.create!(username: "Jools", first_name: "Julien", last_name: "Longsurname", avatar: file16, first_line_address: "", second_line_address: "", town_city: "Bordeaux", postcode: "", country: "France", description: "J'aime beaucoup du pain", have_need: 'need', email: "julien@julien.com", password: "password", password_confirmation: "password")




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

