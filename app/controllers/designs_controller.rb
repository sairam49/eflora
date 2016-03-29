class DesignsController < ApplicationController
  def new
  end

  def show
    @record = Design.suggest_pond(params[:design])
  end
end
