class MeController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @jobs = Job.where(user: current_user)
  end

end
