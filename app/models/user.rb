class User < ActiveRecord::Base
  before_save  {self.mortgage_reference_num = mortgage_reference_num.upcase}  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :mortgage_reference_num, presence: true, uniqueness: {case_sensitive: false}
  
  has_secure_password
  validates  :password, presence: true, length: {minimum: 6}
end
