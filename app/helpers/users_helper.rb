module UsersHelper
 
  
  
  #checks admin status
  def admin_user?
    if logged_in?
      unless current_user.admin?
      redirect_to root_path
      end
    end
  end
  

  #checks user can only view their income, and no one elses, unless admin. 
def myincome?
  unless current_user.admin? || (Income.find_by(user_id: current_user.id).id == @income.id)
    redirect_to root_path      
    end   
end
    
 
end


