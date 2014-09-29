class Order < ActiveRecord::Base
  #Order attributes
  attr_accessor :id, :subtotal, :delivery_date, :products, :affiliate_tax, 
                :affiliate_service_charge, :total
  
  has_one :recipient
  has_one :user
  has_one :message
end