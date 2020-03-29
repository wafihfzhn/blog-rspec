class Public::BlogsController < ApplicationController
  def index
    @articles = Article.all
  end
end