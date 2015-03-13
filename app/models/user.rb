class User < ActiveRecord::Base
  has_one :income  
  before_save  {self.mortgage_reference_num = mortgage_reference_num.upcase}  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :mortgage_reference_num, presence: true, uniqueness: {case_sensitive: false}
  
  has_secure_password
  validates  :password, presence: true, length: {minimum: 6}
  
  
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  


  
end
