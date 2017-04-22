class UsersController < ApplicationController
  private
  def user_params
    params.require(:user).permit(:user,
                                 :password)
  end
end
