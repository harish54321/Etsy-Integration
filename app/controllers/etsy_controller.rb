class EtsyController < ApplicationController

  def new_authorization
    e_request = Etsy.request_token
    RequestToken.create! :token => e_request.token,
      :secret => e_request.secret,
      :user => current_user
    redirect_to Etsy.verification_url
  end

  def authorize
    linked_request = RequestToken.find_by_token params[:oauth_token]

    if linked_request
      e_access = Etsy.access_token(
        linked_request.token,
        linked_request.secret,
        params[:oauth_verifier]
      )

      e_user = Etsy.myself( e_access.token, e_access.secret )

      AccessToken.create! :token => e_access.token,
        :secret => e_access.secret,
        :user => current_user,
        :shop_name => e_user.shop.name

      linked_request.destroy

      notice = 'Account linked'
    else
      notice = 'Unable to locate request token'
    end

    redirect_to root_path, :notice => notice
  end

end
