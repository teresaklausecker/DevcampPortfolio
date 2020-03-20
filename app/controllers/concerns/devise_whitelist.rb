module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameter, if: :devise_controller?
  end

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

    ## Alternatives:
    # devise_parameter_sanitizer.permit(:sign_up) { |keys| keys.permi(:name, :email, :password, :password_confirmation)}
    # devise_parameter_sanitizer.permit(:account_update) { |keys| keyspermit(:name, :email, :password, :password_confirmation,:current_password)}
  end
end