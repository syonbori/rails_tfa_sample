class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    log_out
    render 'new'
  end

end
