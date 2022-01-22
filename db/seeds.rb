puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating Users..."

User.create(first_name: "Gerry", last_name: "Mazsloff", email:"gerry@mazsloff.org", password:"12345", avatar_url: "https://optimalw.com/wp-content/uploads/2015/10/sample-avatar.jpg")
User.create(first_name: "Devon", last_name: "RickRoll", email: "nevergonnagive@you.up", password:"12345", avatar_url: "https://www.dailydot.com/wp-content/uploads/916/c5/decb873e864d4d61bca469563398e52b.jpg")

puts "Creating Restaurants..."
Restaurant.create(name:"Olive Garden", details: "8 miles away", picture_url:"https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fp.fod4.com%2Fp%2Fmedia%2F74947bbe2e%2Fy77M4ukrRtp2MimFRH3Q_Olive_Garden_Italian_Restaurant.jpg&f=1&nofb=1")
Restaurant.create(name:"Taco Bell", details: "Tasty food.", picture_url:
"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbrobible.com%2Fwp-content%2Fuploads%2F2020%2F07%2FiStock-458272681.jpg&f=1&nofb=1")
Restaurant.create(name:"Burger King", details:"Burgers and Fries.", picture_url:"https://www.sickchirpse.com/wp-content/uploads/2020/04/BK.jpg")
Restaurant.create(name:"Firehouse Subs", details:"High quality steamed subs.", picture_url:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fbrobible.com%2Fwp-content%2Fuploads%2F2020%2F07%2FiStock-458272681.jpg&f=1&nofb=1")
Restaurant.create(name:"Wendy's", details:"Good square burgers.", picture_url:"https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi1.wp.com%2Fnypost.com%2Fwp-content%2Fuploads%2Fsites%2F2%2F2020%2F11%2Fwendys.jpg%3Fquality%3D90%26strip%3Dall%26ssl%3D1&f=1&nofb=1")

puts "Creating Likes..."
Like.create(user_id:2, restaurant_id:1, super_like:0)
Like.create(user_id:2, restaurant_id:2, super_like:0)
Like.create(user_id:2, restaurant_id:3, super_like:0)
Like.create(user_id:2, restaurant_id:4, super_like:0)
Like.create(user_id:2, restaurant_id:5, super_like:0)

puts "Creating Discussions...(none for now)"


puts "Creating Chat Message... (none for now)"
puts "✅ Done seeding!"
