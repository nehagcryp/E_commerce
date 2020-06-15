class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
     if current_user.admin == true
       admin_root_path
  else
     root_path(current_user)
    end
end


end
