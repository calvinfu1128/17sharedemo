class PagesController < ApplicationController
    def index
        @user = User.new
        @assets = Asset.all
        @asset = Asset.new
    end

    def create
      if @user = login(params[:email], params[:password], params[:remember])
        redirect_back_or_to(:users, notice: 'Login successful')
      else
        flash.now[:alert] = 'Login failed'
        render action: 'new'
      end
    end
end
