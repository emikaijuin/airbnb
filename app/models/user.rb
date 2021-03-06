class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :authentications, dependent: :destroy
  acts_as_booker # Give model permission to make bookings through Bookable gem
  mount_uploader :avatar, AvatarUploader # Create uploader
  enum role: [:customer, :moderator, :superadmin]
  
  def self.create_with_auth_and_hash(authentication, auth_hash)
    user = self.create!(
        first_name: auth_hash["extra"]["raw_info"]["first_name"],
        last_name: auth_hash["extra"]["raw_info"]["last_name"],
        email: auth_hash["extra"]["raw_info"]["email"],
        password: SecureRandom.hex(15)
        )

      user.authentications << authentication
      return user
  end
  
  def fb_token
      x = self.authentications.find_by(provider: 'facebook')
      return x.token unless x.nil?
  end
    
  # Facebook Login
    
  def self.create_with_auth_and_hash(authentication, auth_hash)
   user = self.create!(
     name: auth_hash["name"],
     email: auth_hash["extra"]["raw_info"]["email"]
   )
   user.authentications << authentication
   return user
  end

 # grab fb_token to access Facebook for user data
 
  def fb_token
   x = self.authentications.find_by(provider: 'facebook')
   return x.token unless x.nil?
  end
    
end


