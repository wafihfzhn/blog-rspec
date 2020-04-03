require 'rails_helper'

RSpec.describe Users::ArticlesController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    sign_in @user
  end

  describe "GET #index" do
    it "return a success response" do
      get :index
      expect(response).to be_ok
    end
  end

  describe "GET #new" do
    it "return a success response" do
      get :new
      expect(response).to be_ok
    end
  end

  describe "GET #edit" do
    before do
      @article = FactoryBot.create(:article, user: @user)
    end

    it "return a success response" do
      get :edit, params: { id: @article.id }
      expect(response).to be_ok
    end
  end

  describe "POST #create" do
    context "successfuly created" do
      it "added a article" do
        article_params = FactoryBot.attributes_for(:article)
        expect {
          post :create, params: { article: article_params }
        }.to change(@user.articles, :count).by(1)
      end

      it "redirects to the article path" do
        article_params = FactoryBot.attributes_for(:article)
        post :create, params: { article: article_params }
        expect(response).to redirect_to public_blog_path(Article.last.id)
      end
    end

    context "unsuccessful create" do
      it "does not add the article" do
        article_params = FactoryBot.attributes_for(:article, name: nil)
        expect {
          post :create, params: { article: article_params }
        }.to change(@user.articles, :count).by(0)
      end

      it "render article new form" do
        article_params = FactoryBot.attributes_for(:article, name: nil)
        post :create, params: { article: article_params }
        expect(response).to render_template(:new)
      end
    end 
  end

  describe "PUT #update" do
    context "successfuly updated" do
      before do
        @article = FactoryBot.create(:article, user: @user)
      end

      it "updates a article" do
        article_params = FactoryBot.attributes_for(:article, name: "Update Article Name")
        patch :update, params: { id: @article.id, article: article_params }
        expect(@article.reload.name).to eq "Update Article Name" 
      end

      it "redirects to the article path" do
        article_params = FactoryBot.attributes_for(:article)
        patch :update, params: { id: @article.id, article: article_params }
        expect(response).to redirect_to public_blog_path(@article)
      end
    end 

    context "failed update" do
      before do
        @article = FactoryBot.create(:article, user: @user)
      end

      it "render article edit form" do
        article_params = FactoryBot.attributes_for(:article, name: nil)
        patch :update, params: { id: @article.id, article: article_params }
        expect(response).to render_template(:edit)
      end
    end
  end
end