class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def after_sign_in_path_for(resource)
    if resource.present?
      session['user_return_to'] = homes_path
    else
      request.referer || root_path
    end
  end

  def after_sign_up_path_for(resource)
    if resource.present?
      session['user_return_to'] = homes_path
    else
      request.referer || root_path
    end
  end

end
