class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception

  private

  def user_not_authorized
    flash[:notice] = 'You are not authorized to perform this action.'
    redirect_to(request.referrer || root_path)
  end

  def query
    params[:q].blank? ? '*' : params[:q]
  end
end
