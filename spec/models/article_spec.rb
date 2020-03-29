# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validation tests" do
    it "ensures title presence" do
      article = Article.new(
        name: nil,
        description: Faker::Hipster.paragraphs,
        user_id: 1
      ).save
      expect(article).to eq(false) 
    end

    it "ensures description presence" do
      article = Article.new(
        name: Faker::Hipster.sentence,
        description: nil,
        user_id: 1
      ).save
      expect(article).to eq(false) 
    end

    it "ensures user id presence" do
      article = Article.new(
        name: Faker::Hipster.sentence,
        description: Faker::Hipster.paragraphs,
        user_id: 1
      ).save
      expect(article).to eq(false) 
    end

    it "should save successfully" do
      user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        birthday: Faker::Date.birthday,
        email: Faker::Internet.email,
        password: Faker::Internet.password
      )
      article = Article.new(
        name: Faker::Hipster.sentence,
        description: Faker::Hipster.paragraphs,
        user_id: user.id
      ).save
      expect(article).to eq(true)
    end
  end
end
