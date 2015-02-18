class WelcomeController < ApplicationController
  def index
    @request_tokens = current_user.request_tokens

    @access_tokens = current_user.access_tokens
  end
end
