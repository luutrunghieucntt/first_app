class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :user_name
      t.text :description
      t.boolean :premiun
      t.integer :income
      t.float :ranking
      t.decimal :fee
      t.date :birthday
      t.time :login_time

      t.timestamps
    end
    
    def up
      add_column :accounts, :coupon_code, "SMALLINT(5) UNSIGNED", :null => false
    end
  end
end
