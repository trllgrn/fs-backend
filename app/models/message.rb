class Message < ActiveRecord::Base
  attr_accessor :id, :content, :order_id
  belongs_to :order
end