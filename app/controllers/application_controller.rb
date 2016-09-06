class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception


  # Redirection si user n'est pas permis
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  # pour ajouter un champ dans le formulaire user
   before_action :configure_permitted_parameters, if: :devise_controller?

	protected
		def configure_permitted_parameters
		  devise_parameter_sanitizer.permit(:sign_up, keys: [:nom, :prenom, :email, :password ])
		  devise_parameter_sanitizer.permit(:account_update, keys: [:nom, :prenom, :email, :password ])
		end
end
