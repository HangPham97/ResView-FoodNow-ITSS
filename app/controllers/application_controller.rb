class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
         devise_parameter_sanitizer.permit(:account_update, keys: [:username,:address,:phone,:avatar])
    end
    def after_update_path_for(resource)
      user_path(resource)
    end
end
