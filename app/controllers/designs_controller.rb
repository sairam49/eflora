class DesignsController < ApplicationController
  def new
  end

  def show
  @record = Design.where("area = ? AND cost = ? AND pond = ?",
                           params[:design][:area],params[:design][:cost],params[:design][:pond]).first

  end
end
