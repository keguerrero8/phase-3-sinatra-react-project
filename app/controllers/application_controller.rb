class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project! TestingAustin" }.to_json
  end

  get "/matches" do
      matches = Restaurant.all.map do |restaurant|
        (restaurant.matched) ? restaurant.name : false
      end
      matches.to_json
  end


  get "/users" do
    users = User.all 
    users.to_json
  end

  post "/users" do
      user = User.create(
        first_name: params[:first_name], 
        last_name: params[:last_name], 
        email:params[:email],
        password:params[:password],
        avatar_url:params[:avatar_url]
      )
      user.to_json
    end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

  get '/restaurants' do
    restaurants = Restaurant.all
    restaurants.to_json
  end

  delete "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    rstaurant.to_json
  end

  post '/restaurant' do
    restaurant = Restaurant.create(
      Restaurant.create(
        name: params[:name],
        details: params[:details],
        picture_url:params[:picture_url]
      )
    )
    restaurant.to_json
  end

  get "/restaurants/:id" do
    restaurant = Restaurant.find(params[:id])
    restaurant.to_json
  end

  get '/likes' do
    likes = Like.all
    likes.to_json
  end

  get "/likes/:id" do
    like = Like.find(params[:id])
    like.to_json
  end

  post '/likes' do
    like = Like.create(
        user_id: 1,
        restaurant_id:params[:restaurant_id],
        super_like: false 
      )
    like.to_json
  end

end
