class UsersController < ApplicationController
  before_filter :is_owner, only: [:show]
  
  def show
  	@user = User.all
  end

  def is_owner
  	if user_signed_in?
    	if current_user.email != "admin@admin.org"
        	redirect_to "/", notice: 'You have no permission to access this page.'      
    	end
    else
    		redirect_to "/", notice: 'You have no permission to access this page.'      
    end
  end

end
