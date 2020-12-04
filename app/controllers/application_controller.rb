class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :prefecture_id, :city])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :prefecture_id, :city, :age, :hoby, :want, :profile])
  end
end
