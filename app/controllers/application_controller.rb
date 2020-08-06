class ApplicationController < ActionController::Base
    before_action :laytheloai
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:quyen_id, :email, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:quyen_id, :email, :password, :current_password)}
         end
    def laytheloai
        @theloai = Theloai.all
    end 
end
