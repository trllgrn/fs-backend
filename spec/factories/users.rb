#spec/factories/users.rb
require 'faker'

FactoryGirl.define do
  factory :user do |u|
    u.name {Faker::Name.name}
    u.email {Faker::Internet.free_email}
    u.provider 'facebook'
    u.petal_id {Faker::Number.number(10)}
    u.access_token {Faker::Bitcoin.address}
  end
end
