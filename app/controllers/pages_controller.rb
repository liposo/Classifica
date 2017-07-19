class PagesController < ApplicationController

    include ApplicationHelper

    def home
        @posts = Post.all
    end

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

    def pages_params
        params.permit(post_attributes:[:title, :description, :address, :raw_address, :longitude, :latitude])
    end
end