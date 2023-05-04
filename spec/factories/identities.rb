FactoryBot.define do
  factory :identity do
    user_id { "" }
    provider { "MyString" }
    uid { "MyString" }
    image { "MyString" }
    full_name { "MyString" }
  end
end
