# frozen_string_literal: true

# Class UsersController
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show; end
end
