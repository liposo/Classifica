class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    include ApplicationHelper

    def resource_name
        :user
    end
    helper_method :resource_name

    def resource
        @resource ||= User.new
    end
    helper_method :resource

    def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
    end
    helper_method :devise_mapping

    def resource_class
        User
    end
    helper_method :resource_class

end
