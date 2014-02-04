class User < ActiveRecord::Base
  validates :petal_id, :access_token, :provider, :email, :name, presence: true
  validates :email, format: {with: /@/ }
end
