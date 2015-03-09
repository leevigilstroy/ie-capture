class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(mortgage_reference_num: params[:session][:mortgage_reference_num].upcase)
    if user && user.authenticate(params[:session][:password])


    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
    end
    
end
