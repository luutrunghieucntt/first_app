class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :street
      t.text :district
      t.text :city
      t.text :provice

      t.timestamps
    end
  end
end
