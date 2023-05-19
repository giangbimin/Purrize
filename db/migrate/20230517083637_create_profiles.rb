class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles, id: false do |t|
      t.uuid :user_id
      t.string :tel
      t.text :basic_information
      t.boolean :is_verified

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
