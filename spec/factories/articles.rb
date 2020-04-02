FactoryBot.define do
  factory :article do
    name { "This id title of article" }
    description { "This id description of article" }
    user
  end
end
