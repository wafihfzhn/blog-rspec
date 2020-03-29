class Public::BlogsController < ApplicationController
  def index
    @articles = Articel.all
  end
end