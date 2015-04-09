class DeliveryAddress < ActiveRecord::Base
  attr_accessor :label, :address1, :address2,
                :city, :state, :country, :zip
  belongs_to :recipient
end