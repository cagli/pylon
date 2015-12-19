class DashboardController < ApplicationController

before_action :authenticate_user!
    
    def show
      if valid_page?
        render template: "dashboard/#{params[:page]}"
      else
        render file: "public/404.html", status: :not_found
      end
    end

    def profile
      @user = User.find_by_username(params[:username])
    end

    private
    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/dashboard/#{params[:page]}.html.erb"))
    end
    
 end