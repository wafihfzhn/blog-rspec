# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string
#  slug        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_articles_on_slug     (slug) UNIQUE
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :article do
    name { "This id title of article" }
    description { "This id description of article" }
    user
  end
end
