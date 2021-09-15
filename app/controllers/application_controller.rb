class ApplicationController < ActionController::Base
  # deviseのstrong_parametersを設定
  before_action :configure_permited_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected

  def configure_permited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


end
