class RequestsController < ApplicationController
  def new
    @request = Request.new
  end

  def create
 @request = Request.new(request_params)
    if @request.save
      update = current_user.id
      @request.update_attribute(:user_id , update)
      index
      render 'index'
    else
      render 'new'
    end
  end

  def index
    @count = Request.count
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

 private

  def request_params
    params.require(:request).permit(:order,:user_id)
  end

end
