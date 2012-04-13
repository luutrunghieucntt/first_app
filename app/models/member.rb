class Member < ActiveRecord::Base
  attr_accessible :status
  validates_inclusion_of :status, :in => [:init, :success, :fail]
  
  def status
    read_attribute(:status).to_sym
  end
  
  def status=(value)
    write_attribute(:status, value.to_s)
  end
end
