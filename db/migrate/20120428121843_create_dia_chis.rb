class CreateDiaChis < ActiveRecord::Migration
  def change
    create_table :dia_chis do |t|
      t.string :duong
      t.string :phuong
      t.string :thanhpho
      t.string :tinh
      t.references :account

      t.timestamps
    end
    add_index :dia_chis, :account_id
  end
end
