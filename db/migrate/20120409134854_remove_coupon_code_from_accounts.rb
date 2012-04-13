class RemoveCouponCodeFromAccounts < ActiveRecord::Migration
  def up
    remove_column :accounts, :coupon_code
        remove_column :accounts, :coupon_date
      end

  def down
    add_column :accounts, :coupon_date, :time
    add_column :accounts, :coupon_code, :string
  end
end
