class User < ActiveRecord::Base
  validates :petal_id, :access_token, :provider, :email, :name, presence: true
  validates :email, format: {with: /@/ }
  has_many :orders
  has_many :recipients
  
  def self.find_or_create_from_auth_hash(creds)
    #Try to find the user in the database first with email
    user = User.find_by_email(creds[:info][:email]) ||
    user = User.create_from_hash(creds)
  end
  
  def self.create_from_hash(auth_info)
    #Assume we're getting passed the auth_hash from Omniauth
    #Build the hash to pass into the initialize method
    puts auth_info.inspect
    
    user = User.new do |u|
      u.petal_id = auth_info[:uid]
      u.access_token = auth_info[:credentials][:token]
      u.provider = auth_info[:provider]
      u.email = auth_info[:info][:email]
      u.name = auth_info[:info][:name]
    end
    user.save
  end
  
end