# frozen_string_literal: true

class AvatarController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @user.avatar.attach(params[:avatar])
    redirect_to user_path(@user)
  end
end
