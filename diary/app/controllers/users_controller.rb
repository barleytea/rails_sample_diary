class UsersController < ApplicationController
  def index
    @hello = 'Hello, world!'
    render template: 'users/index' # renderメソッドごと省略可能
  end
end
