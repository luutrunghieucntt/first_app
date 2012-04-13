class Account < ActiveRecord::Base
  attr_accessible :birthday, :description, :fee, :income, :login_time, :premiun, :ranking, :user_name
  validates :user_name,  :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
  has_many :contacts
end
