class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permited_parameters, if: :devise_controller?

    protected 
        def configure_permited_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :avatar])
            devise_parameter_sanitizer.permit(:account_update, keys: [:email, :avatar])
        end
end
