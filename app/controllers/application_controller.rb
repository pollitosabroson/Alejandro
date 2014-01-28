class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate, :only => [:new, :edit, :create, :update, :destroy, :admin, :admin_print, :save]

  private

  def redirect_main_domain
    dominio = 'www.alejandrohdez.com'
    if request.env['HTTP_HOST'] != dominio
      redirect_to "http://#{dominio}#{request.fullpath}"
    end
  end

  def authenticate
    authenticate_or_request_with_http_basic do |user, password| 
        session[:admin]= (user == ENV['user'] && password == ENV['pass'])
    end
  end
   
  def rescue_action_in_public(exception)    
    case exception
    when ActiveRecord::RecordNotFound, ActionController::UnknownAction, ActionController::RoutingError
      render :file => "error/404", :status => 404
    else
      super
    end
  end
end
