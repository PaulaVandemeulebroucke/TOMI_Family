class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  before_action :find_unread_message, if: :has_current_user?
  #include Pundit

  def after_sign_in_path_for(resource)
    if current_user.user_category == "parent"
      request.env['omniauth.origin'] || stored_location_for(resource) || homepage_parents_path
    else
      request.env['omniauth.origin'] || stored_location_for(resource) || homepage_path
    end
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_category])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def has_current_user?
    current_user ? true : false
  end

  def find_unread_message
    if current_user
      @unread_messages = false
      current_user.conversations.each do |conv|
        unless conv.messages.where(read: false).where.not(user_id: current_user.id).empty?
          @unread_messages = true
          break
        end
      end
    end
  end



  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end



