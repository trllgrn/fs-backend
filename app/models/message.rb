class Message < ActiveRecord::Base
  attr_accessor :id, :content
  belongs_to :order
  validates :content, length: { maximum: 160}
end