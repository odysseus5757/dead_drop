class CreateMatters < ActiveRecord::Migration
  def change
    create_table :matters do |t|
      t.string :matter_name
      t.integer :owner_id

      t.timestamps

    end
  end
end
