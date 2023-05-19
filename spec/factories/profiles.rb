FactoryBot.define do
  factory :profile do
    user_id { "" }
    avatar { "MyString" }
    tel { "MyString" }
    basic_information { "MyText" }
    is_verified { false }
  end
end
