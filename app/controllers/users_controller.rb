class UsersController < ApplicationController
  def index
    users = User.all
    @users = users.map do |user|
      { id: user.id, name: user.name, age: user.age }
    end
    render index, json: @users
  end
  def current
    render status: 204, json: nil
  end
end