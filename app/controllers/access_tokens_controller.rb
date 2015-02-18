class AccessTokensController < ApplicationController
  before_filter :load_access_token

  def edit
  end

  def update
    @access_token.update_attributes params[:access_token]

    if @access_token.save
      redirect_to root_path, :notice => "Shop Settings Updated!"
    else
      render :edit
    end
  end

  def load_access_token
    @access_token = AccessToken.find params[:id]
  end
end
