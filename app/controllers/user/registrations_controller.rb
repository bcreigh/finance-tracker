class User::RegistrationsController < Devise::RegistrationsController
   before_filter :configure_permitted_paramerters
   
   protected
   
   def configure_permitted_paramerters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name])
   end
end