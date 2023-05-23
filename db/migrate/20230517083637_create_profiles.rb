class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles, id: false, primary_key: :user_id do |t|
      t.uuid :user_id, null: false, primary: true
      t.string :full_name
      t.string :tel
      t.string :zip
      t.text :basic_information
      t.boolean :is_verified
      t.integer :gender
      t.date :dob
      t.text :address
      t.integer :timezone, default: 0
      t.integer :language, default: 0

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
