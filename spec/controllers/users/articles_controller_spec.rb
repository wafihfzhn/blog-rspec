require 'rails_helper'

RSpec.describe Users::ArticlesController, type: :controller do
  describe "GET #index" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end

      it "return a success response" do
        sign_in @user
        get :index
        expect(response).to be_ok
      end
    end 
  end

  describe "GET #new" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end

      it "return a success response" do
        sign_in @user
        get :new
        expect(response).to be_ok
      end
    end 
  end

  describe "POST #create" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end

      it "added a article" do
        article_params = FactoryBot.attributes_for(:article)
        sign_in @user
        expect {
          post :create, params: { article: article_params }
        }.to change(@user.articles, :count).by(1)
      end
    end 
  end
end