class ServicesController < ApplicationController
  def new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      update = current_user.id
      @service.update_attribute(:user_id,update)

    else
      render 'new'
    end
  end

def index
  @services = Service.where(:user_id => current_user.id).all
end

  def edit
  end


  private

  def service_params
    params.require(:service).permit(:service,:description,:user_id)
  end


end
