class HomeController < ApplicationController
  def index
    @dashboard = Dashboard.where(user_id: current_user.id).first
  end
end
