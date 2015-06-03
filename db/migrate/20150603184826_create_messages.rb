class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.integer :classification_id
      t.text :message_content
      t.integer :matter_id

      t.timestamps

    end
  end
end
