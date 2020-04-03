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

class Article < ApplicationRecord
  # Slugging and permalink plugins for ActiveRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Relationship
  belongs_to :user
  has_rich_text :description

  # Validates
  validates :name, :description, presence: true
end
