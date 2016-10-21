FactoryGirl.define do
  factory :product do
    sequence(:title) {|n| "Some valid title #{n}" }
    description { Faker::Hipster.paragraph}
    price { rand(1000) }
    sale_price { rand(price) } #
  end
end
