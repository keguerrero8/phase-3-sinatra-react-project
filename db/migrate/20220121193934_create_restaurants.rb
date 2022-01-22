class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.string :details
      t.string :picture_url
    end
end
end
