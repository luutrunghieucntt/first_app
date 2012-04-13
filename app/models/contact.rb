class Contact < ActiveRecord::Base
  belongs_to :account
  attr_accessible :phone_number, :title
end
