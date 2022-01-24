class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.string :message
      t.date :creation_date
      t.integer :sender_id
      t.integer :receiver_id
    end
  end
end
