FactoryBot.define do
  factory :user do
    first_name { "Hafizhuddin" }
    last_name { "Wafi" }
    birthday { "1997-07-27" }
    email { "tester@example.com" }
    password { "password" }
  end
end
