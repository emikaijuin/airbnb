class User < ActiveRecord::Base
  include Clearance::User
  acts_as_booker
  
  enum role: [:customer, :moderator, :superadmin]
  
  has_many :authentications, dependent: :destroy
  
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
    
end
