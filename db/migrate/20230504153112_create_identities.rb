class CreateIdentities < ActiveRecord::Migration[7.0]
  def change
    create_table :identities, id: :uuid do |t|
      t.uuid :user_id, null: false
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :image
      t.string :full_name

      t.timestamps
    end

    add_index :identities, :user_id
    add_index :identities, [:uid, :provider]
  end
end
