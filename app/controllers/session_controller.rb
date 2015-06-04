class SessionController < ApplicationController
  

  def new
    @user = User.new
  end

  def create
    # raise params.inspect
    user = User.find_by :name => params[:name]
      if user.present? && user.authenticate(params[:password])
         session[:user_id] = user.id
         @current_user = user
         redirect_to exercises_path
      else
        flash[:notice] = "Invalid login, please try again."
        redirect_to login_path
    end
  end

  def delete
    session[:user_id] = nil
    @current_user = nil
    redirect_to exercise_path
  end
end


