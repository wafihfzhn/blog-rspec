require 'rails_helper'

RSpec.describe Public::BlogsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_ok
    end
  end

  describe "GET #show" do
    before do
      @user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        birthday: Faker::Date.birthday,
        email: Faker::Internet.email,
        password: Faker::Internet.password
      )
    end

    it "return a success response" do
      article = Article.create!(
        name: Faker::Hipster.sentence,
        description: Faker::Hipster.paragraphs,
        user_id: @user.id
      )
      get :show, params: { id: article.to_param }
      expect(response).to be_ok
    end
  end
end
