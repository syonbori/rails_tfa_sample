class MypageController < ApplicationController
  before_action :authenticate_user!

  def index
    @regs = current_user.registrations
  end
end
