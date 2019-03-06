# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private

  def users_not_found
    redirect_to root_url, alert: t('.users_not_found')
  end
end
