class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user
  def show
  end

  def edit
  end

  def update
    if @user.update(params.require(:user).permit(:name, :email, :profile, :blog_url))
      redirect_to user_path, notice: '編集しました'
    else
      render :edit
    end
  end
  private
  def set_current_user
    @user = current_user
  end
end
