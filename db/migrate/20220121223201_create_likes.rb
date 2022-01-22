class CreateLikes < ActiveRecord::Migration[6.1]
  def change
      create_table :likes do |t|
        t.integer :user_id
        t.integer :restaurant_id
        t.boolean :super_like
  end
end
end
