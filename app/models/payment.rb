class Payment < ActiveRecord::Base
  #Payment Attributes
  attr_accessor :id, :card_type, :card_number, :month, :year, :code
  belongs_to :user
end
