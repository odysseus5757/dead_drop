class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :classification_name

      t.timestamps

    end
  end
end
