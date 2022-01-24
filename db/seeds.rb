require "faker"

puts "🌱 Seeding spices..."

# Seed your database here
puts "Creating Users..."

User.create(first_name: "Gerry", last_name: "Mazsloff", email:"gerry@mazsloff.org", password:"12345", avatar_url: "https://optimalw.com/wp-content/uploads/2015/10/sample-avatar.jpg")
User.create(first_name: "Devon", last_name: "Ricks", email: "nevergonnagive@you.up", password:"12345", avatar_url: "https://numberily.com/wp-content/uploads/2019/04/Devyn-Kohl.jpg")
User.create(first_name: "Daniela", last_name: "Rivas", email: "daniela@you.up", password:"12345", avatar_url: "https://i.pinimg.com/280x280_RS/5b/f1/49/5bf149cbcdcbd4b04abf9891d1b564b8.jpg")
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

puts "Creating Conversations..."
Conversation.create(user_id:1, user_two_id:2, name: "Devon Ricks" , message: "I can't remember what's on their menu?", timestamp: "2 seconds ago", profilepic:"https://numberily.com/wp-content/uploads/2019/04/Devyn-Kohl.jpg" )
Conversation.create(user_id:1, user_two_id:3, name: "Daniela Rivas" , message: "2:00PM? Saturday?", timestamp: "30 minutes ago" , profilepic:"https://i.pinimg.com/280x280_RS/5b/f1/49/5bf149cbcdcbd4b04abf9891d1b564b8.jpg" )

puts "Creating Chat Message..."
Message.create(conversation_id:1, sender_id: 1 , receiver_id: 2, message:"You pressed like on a Steakhouse? I thought you were Vegan!", creation_date: Faker::Time.backward(days:1) )
Message.create(conversation_id:1,  sender_id: 2, receiver_id: 1,  message:"I thought they had that great salad option...", creation_date: Faker::Time.backward(days:1) )
Message.create(conversation_id:1,  sender_id: 2, receiver_id: 1,  message:"I can't remember what's on their menu?", creation_date: Faker::Time.backward(days:1) )
Message.create(conversation_id:2,  sender_id: 1, receiver_id: 3,  message:"I am ok with Burger King or Orofino's?", creation_date: Faker::Time.backward(days:1) )
Message.create(conversation_id:2,  sender_id: 3, receiver_id: 1,  message:"Orofino's!", creation_date: Faker::Time.backward(days:1) )
Message.create(conversation_id:2,  sender_id: 3, receiver_id: 1,  message:"2:00PM? Saturday?", creation_date: Faker::Time.backward(days:1) )


puts "✅ Done seeding!"
