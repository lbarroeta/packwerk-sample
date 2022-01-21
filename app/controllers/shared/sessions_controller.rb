module Shared
  class SessionsController < ApplicationController
    def new
      redirect_to dashboard_path if logged_in?
    end

    def create
      user = login(params[:email], params[:password], params[:remember_me])

      if user
        redirect_back_or_to dashboard_path, noticed: 'Logged in!'
      else
        flash.now.alert = 'Email or password was invalid'
        render :new, status: :see_other
      end
    end

    def destroy
      logout
      redirect_back_or_to root_path, noticed: 'Logged in!'
    end
  end
end