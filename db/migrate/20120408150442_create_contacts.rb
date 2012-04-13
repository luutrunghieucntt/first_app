class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :phone_number
      t.references :account

      t.timestamps
    end
    add_index :contacts, :account_id
  end
end
