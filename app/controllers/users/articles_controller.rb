class Users::ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    @articles = Article.where(user_id: current_user.id)
  end
end