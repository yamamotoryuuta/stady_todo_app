class UserController < ApplicationController
  before_action :set_user, only: %i(edit update)

  def edit
  end

  def update
    if @user.update_attributes(user_name_params)
      redirect_to :root
    else
      reder action: :edit
    end
  end

  private

  def user_name_params
    params.require(:user).permit(:name)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
