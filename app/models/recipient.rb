class Recipient < ActiveRecord::Base
  attr_accessor :name
  has_many :delivery_addresses
  belongs_to :user
end