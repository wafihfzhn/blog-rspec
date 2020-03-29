class Public::BlogsController < ApplicationController
  def index
    @articles = Articles.all
  end
end