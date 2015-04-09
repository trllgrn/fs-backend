class LineItem < ActiveRecord::Base
  attr_accessor :id, :type, :amount, :qty, :price
  has_many :products
end
