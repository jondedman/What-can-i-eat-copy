class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @chatroom = Chatroom.first
    @user_bookmarks = Bookmark.where(user: current_user)
    @user_ingredients = UserIngredient.where(user: current_user)
    @user_ingredient = UserIngredient.new
  end
end
