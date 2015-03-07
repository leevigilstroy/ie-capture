class UsersController < ApplicationController
  
  def index
    @users = Users.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "New User Created"
      redirect_to(:action => 'show', :id => @user.id)

    else
      render 'new'
    end

  end
  

  
  def edit
    @user = User.find(params[:id])
  end
  
  def update    
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
        redirect_to(:action => 'show', :id => @user.id)
       else
      redirect_to(:action => 'edit')
       end
  end
  
  def delete
  end
  
  def destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :mortgage_reference_num,  :password, :password_confirmation)
  end
  
  
end
