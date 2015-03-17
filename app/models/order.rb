class Order < ActiveRecord::Base
  #Order attributes
  attr_accessor :id, :delivery_date, :products, :total
  has_one :payment
  has_one :recipient
  has_one :user
  has_one :message
end