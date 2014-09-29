class Address < ActiveRecord::Base
  attr_accessor :type, :label, :address1, :address2, 
                :city, :state, :country, :zip
  belongs_to :user, polymorphic: true
  belongs_to :recipient, polymorphic: true
end