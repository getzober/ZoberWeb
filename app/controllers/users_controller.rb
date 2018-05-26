class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #       session[:id] = @user.id
  #     redirect_to root_url, notice: "Congrats, you've officially joined our cause"
  #   else
  #     render :new
  #   end
  # end

  private
  def user_params
    params.require(:user).permit(
                                 :first_name,
                                 :last_name,
                                 :email,
                                 :password,
                                 :username,
                                 :password_confirmation

                              )
  end
end
