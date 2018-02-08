class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]


  def create
    if params[:provider] == 'google_oauth2'
      @user = User.from_omniauth(request.env["omniauth.auth"])
      sign_in_and_redirect @user, event: :authentication
    else
      super
    end
  end

end
