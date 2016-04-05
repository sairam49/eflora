class HomeController < ApplicationController
  def index
  end


  def list
    @count = Dashboard.count
    @horticulturists = Dashboard.select("name,id")
  end

  def show

  end


end
