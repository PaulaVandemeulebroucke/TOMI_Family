class NetworksController < ApplicationController

  def edit

    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to network_path
  end

private

  def use_params
    params.require(:user).permit(:first_name, :last_name, :email, :age, :idee_metier)
  end
end
