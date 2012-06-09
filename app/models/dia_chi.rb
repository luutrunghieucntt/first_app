class DiaChi < ActiveRecord::Base
  belongs_to :account
  attr_accessible :duong, :phuong, :thanhpho, :tinh
end
