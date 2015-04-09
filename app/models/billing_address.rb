class BillingAddress < ActiveRecord::Base
  attr_accessor :address1, :address2,
                :city, :state, :country, :zip
  belongs_to :payment
end
