require 'rails_helper'

RSpec.describe Users::ArticlesController, type: :controller do
  describe "GET #index" do
    context "as an authenticated user" do
      before do
        @user = FactoryBot.create(:user)
      end

      it "responds successfully" do
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

      it "responds successfully" do
        sign_in @user
        get :new
        expect(response).to be_ok
      end
    end 
  end
end