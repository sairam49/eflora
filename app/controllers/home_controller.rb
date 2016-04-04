class HomeController < ApplicationController
  def index
  end


  def list
    @horticulturists = Dashboard.pluck(:name)
  end

  def show

  end


end
