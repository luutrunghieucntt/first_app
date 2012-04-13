class AddStatusToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :status, "ENUM('init','success','fail')"
  end
end
