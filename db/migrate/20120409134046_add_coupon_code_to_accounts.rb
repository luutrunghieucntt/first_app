class AddCouponCodeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :coupon_code, :string
    add_column :accounts, :coupon_date, :time
  end
end
