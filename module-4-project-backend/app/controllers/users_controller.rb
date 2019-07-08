class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new
    @user.save
  end

  
end
