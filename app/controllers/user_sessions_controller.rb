class UserSessionsController < ApplicationController
    skip_before_filter :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password], params[:remember])
      redirect_back_or_to(:users, notice: '已登入')
    else
      flash.now[:alert] = '登入失敗'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: '已登出')
  end
end
