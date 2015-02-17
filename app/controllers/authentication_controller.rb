class AuthenticationController < ApplicationController
    def authentication_params
      params.require(:user).permit(:user_id, :provider, :uid)
    end
end
