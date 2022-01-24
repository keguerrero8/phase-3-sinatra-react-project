class CreateConversations < ActiveRecord::Migration[6.1]
  def change
        create_table :conversations do |t|
          t.integer :user_id
          t.integer :user_two_id
          t.string :name
          t.string :message
          t.string :timestamp
          t.string :profilepic
    end
  end
end
