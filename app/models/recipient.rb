class Recipient < ActiveRecord::Base
  attr_accessor :name
  has_many :addresses
  belongs_to :user
end