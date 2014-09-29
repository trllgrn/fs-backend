# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    type ""
    user nil
    card_number "MyString"
    card_exp_mo 1
    card_exp_yr 1
    card_sec_code 1
  end
end
