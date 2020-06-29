class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?
#デバイス機能実行前にconfigure_permitted_parametersの実行をする。
protect_from_forgery with: :exception

  protected
  #sign_in後のredirect先変更する。
  def after_sign_in_path_for(resource)
  	themes_index_path(resource)
  end

  #sign_out後のredirect先変更する。
  def after_sign_out_path_for(resource)
  	root_path
  end

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password])
  	devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :encrypted_password])
  end
end
