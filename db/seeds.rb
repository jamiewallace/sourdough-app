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
file17 = File.open(File.join(Rails.root,"/app/assets/images/selina.jpg"))
file18 = File.open(File.join(Rails.root,"/app/assets/images/jonny.jpg"))
file19 = File.open(File.join(Rails.root,"/app/assets/images/maloney.jpg"))
file20 = File.open(File.join(Rails.root,"/app/assets/images/ralph.jpg"))
file21 = File.open(File.join(Rails.root,"/app/assets/images/sd9.jpg"))
file22 = File.open(File.join(Rails.root,"/app/assets/images/sd10.jpg"))
file24 = File.open(File.join(Rails.root,"/app/assets/images/sd12.jpg"))
file25 = File.open(File.join(Rails.root,"/app/assets/images/sd13.jpg"))
file26 = File.open(File.join(Rails.root,"/app/assets/images/sd14.jpg"))
file27 = File.open(File.join(Rails.root,"/app/assets/images/sd15.jpg"))
file28 = File.open(File.join(Rails.root,"/app/assets/images/sd16.jpg"))
file29 = File.open(File.join(Rails.root,"/app/assets/images/winna.jpg"))
file30 = File.open(File.join(Rails.root,"/app/assets/images/sd17.jpg"))


user1 = User.create!(username: "Makemybread", first_name: "Neha", last_name: "Shah", avatar: file1, first_line_address: "9 Back Hill", second_line_address: "", town_city: "London", postcode: "EC1R 5EN", country: "UK", description: "If you give me some sourdough starter I'll be eternally grateful.  I need lessons too!", have_need: 'need', email: "neshah07@gmail.com", password: "password", password_confirmation: "password", role: "admin")

user2 = User.create!(username: "Jamtista", first_name: "Jamie", last_name: "Wallace", avatar: file2, first_line_address: "12 Aquinas Street", second_line_address: "SE1 8AE", town_city: "London", postcode: "", country: "UK", description: "Desperately seeking a sourdough starter with a good sense of humour.", have_need: 'need', email: "wallacejamiec@gmail.com", password: "password", password_confirmation: "password", role: "admin")

user3 = User.create!(username: "Breadman", first_name: "Alex", last_name: "Hamlin", avatar: file3, first_line_address: "13 Eyre Street Hill", second_line_address: "", town_city: "London", postcode: "EC1R 5ET", country: "UK", description: "Happy to share my yeast culture with all and sundry, especially the ladies!", have_need: 'have', email: "alexham100@aol.com", password: "password", password_confirmation: "password")

user4 = User.create!(username: "Sourandsweet", first_name: "Adam", last_name: "Buchan", avatar: file4, first_line_address: "4-5 Bonhill Street", second_line_address: "", town_city: "London", postcode: "EC2A 4BX", country: "UK", description: "I've been known to bake a mean loaf of bread in my time, and can share my skills...", have_need: 'have', email: "adam.buchan@gmail.com", password: "password", password_confirmation: "password")

user5 = User.create!(username: "Breadmaster", first_name: "David", last_name: "Grilli", avatar: file15, first_line_address: "", second_line_address: "", town_city: "Caracas", postcode: "", country: "Venezuela", description: "The best bread maker in Venezuela who would love to share his knowledge with aspiring bakers.", have_need: 'need', email: "david@david.com", password: "password", password_confirmation: "password")

user6 = User.create!(username: "Jonthebaker", first_name: "Jon", last_name: "Chambers", avatar: file14, first_line_address: "", second_line_address: "", town_city: "Sheffield", postcode: "", country: "UK", description: "An aspiring bread maker from Sheffield who would like to get hold of some starter locally.", have_need: 'need', email: "jon@jon.com", password: "password", password_confirmation: "password")

user7 = User.create!(username: "Baguette", first_name: "Geraud", last_name: "Mathe", avatar: file13, first_line_address: "", second_line_address: "", town_city: "Paris", postcode: "", country: "France", description: "I think baguette is the best bread in the world, but I'm prepared to try this sourdough thing.", have_need: 'need', email: "gerry@gerry.com", password: "password", password_confirmation: "password")

user8 = User.create!(username: "Levain", first_name: "Julien", last_name: "Longsurname", avatar: file16, first_line_address: "", second_line_address: "", town_city: "Bordeaux", postcode: "", country: "France", description: "J'aime beaucoup du pain", have_need: 'need', email: "julien@julien.com", password: "password", password_confirmation: "password")

user9 = User.create!(username: "Breadmistress", first_name: "Selina", last_name: "Chotai", avatar: file17, first_line_address: "66 The Cut", second_line_address: "", town_city: "London", postcode: "SE1 8LZ", country: "UK", description: "Happy to share some of my 12 year old starter", have_need: 'have', email: "selina@selina.com", password: "password", password_confirmation: "password")

user10 = User.create!(username: "Sourdoughsupremo", first_name: "Jonny", last_name: "Adshead", avatar: file18, first_line_address: "25 Roupell Street", second_line_address: "", town_city: "London", postcode: "SE1 8TB", country: "UK", description: "Looking for some help to start making successful sourdough bread", have_need: 'need', email: "jonny@jonny.com", password: "password", password_confirmation: "password")

user11 = User.create!(username: "Maloneybaloney", first_name: "Maloney", last_name: "Liu", avatar: file19, first_line_address: "67 Kennington Road", second_line_address: "", town_city: "London", postcode: "SE1 7PZ", country: "UK", description: "Got starter, happy to teach!", have_need: 'have', email: "maloney@maloney.com", password: "password", password_confirmation: "password")

user12 = User.create!(username: "Wholemealralph", first_name: "Ralph", last_name: "Reid", avatar: file20, first_line_address: "2 Newhams Row", second_line_address: "", town_city: "London", postcode: "SE1 3UZ", country: "UK", description: "Hope someone can help me get hold of a good starter", have_need: 'need', email: "ralph@ralph.com", password: "password", password_confirmation: "password")

user13 = User.create!(username: "Winnabread", first_name: "Winna", last_name: "Bridgewater", avatar: file29, first_line_address: "47 St John's Square", second_line_address: "", town_city: "London", postcode: "EC1V 4JJ", country: "UK", description: "Can meet up and share some of my starter and knowledge", have_need: 'have', email: "winna@winna.com", password: "password", password_confirmation: "password")



image1= Image.create!(user_id: 1, image: file5)
image2= Image.create!(user_id: 1, image: file6)
image3= Image.create!(user_id: 2, image: file7)
image4= Image.create!(user_id: 2, image: file8)
image5= Image.create!(user_id: 3, image: file9)
image6= Image.create!(user_id: 3, image: file10)
image7= Image.create!(user_id: 4, image: file11)
image8= Image.create!(user_id: 4, image: file12)
image9= Image.create!(user_id: 5, image: file21)
image10= Image.create!(user_id: 6, image: file22)
image12= Image.create!(user_id: 8, image: file24)
image13= Image.create!(user_id: 9, image: file25)
image14= Image.create!(user_id: 10, image: file26)
image15= Image.create!(user_id: 11, image: file27)
image16= Image.create!(user_id: 12, image: file28)
image17= Image.create!(user_id: 13, image: file30)





message1 = Message.create(sender_id: user1.id, recipient_id: user2.id, content: "Hello Jamie, from Neha")
message2 = Message.create(sender_id: user2.id, recipient_id: user1.id, content: "Hello Neha, from Jamie")
message3 = Message.create(sender_id: user2.id, recipient_id: user3.id, content: "Hello Alex, from Jamie")

