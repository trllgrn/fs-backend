class Order < ActiveRecord::Base
  #Order attributes
  attr_accessor :id, :status, :delivery_date, :affiliate_tax, :affiliate_fee, :subtotal, :total
  has_one :payment
  has_one :recipient
  belongs_to :user
  has_one :message
  has_many :line_items
end