class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :authenticate_user! #ログインしないとuserページに飛べない設定にする

  private

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == 'admin' && password == '2222'
      end
    end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :prefecture_id, :city])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :prefecture_id, :age, :hoby, :want, :profile, :avatar])
  end

end
