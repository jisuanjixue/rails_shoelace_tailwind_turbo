FactoryBot.define do
  factory :quote do
    name { Faker::Name.first_name }
  end
end
