class SecretsController < ApplicationController
  before_action :authenticate_user!
  before_action :two_factor_auth_authentication

  def index
  end
end
