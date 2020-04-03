class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :is_authorised, only: [:edit, :update]

  def index
    @articles = Article.where(user_id: current_user)
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      redirect_to public_blog_path(@article)
    else
      render :new
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to public_blog_path(@article)
    else
      render :edit
    end
  end

  private

  def is_authorised
    @article = Article.find(params[:id])
    redirect_to users_articles_path, alert: "You do not have permission" unless current_user.id == @article.user_id
  end

  def article_params
    params.require(:article).permit(:name, :description)
  end
end