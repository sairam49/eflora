class HomeController < ApplicationController
  def index
  end


  def list
    @count = Dashboard.count
    @horticulturists = Dashboard.all
  end

  def show

  end


end
