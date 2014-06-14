require 'faker'

FactoryGirl.define do
  factory :product do |p|
    p.code {Faker::Code.isbn}
    p.description {Faker::Lorem.sentence(4)}
    p.large {Faker::Internet.url('flickr.com')}
    p.small {Faker::Internet.url('flickr.com')}
    p.price {(rand() * 100).round(2)}
    p.name {Faker::Lorem.words(4)}
    p.dimension {rand(20).to_s + '"w x ' + rand(20).to_s + '"h'}
    p.product_type {"V"}
    p.occasions {["ao", "vd", "lr", "bd", "gw"]}
  end
end