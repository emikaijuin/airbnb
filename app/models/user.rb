class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :authentication, dependent: :destroy
  
    def self.create_with_auth_and_hash(authentication, auth_hash)
      user = self.create!(
          first_name: auth_hash["info"]["first_name"],
          last_name: auth_hash["info"]["last_name"],
          email: auth_hash["extra"]["raw_info"]["email"],
          birthday: auth_hash["user_birthday"]
          )
        user.authentications << authentication
        return user
    end
    
    def fb_token
        x = self.authentications.find_by(provider: 'facebook')
        return x.token unless x.nil?
    end
    
end
