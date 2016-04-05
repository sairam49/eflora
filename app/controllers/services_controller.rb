class ServicesController < ApplicationController
 before_action :set_service, only: [:destroy]


  def new
    @service = Service.new
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
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      index
      render 'index'
    else
      render 'edit'
    end
  end

 def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_index_path, notice: 'Service was successfully deleted.' }
    end
  end




  private

  def service_params
    params.require(:service).permit(:service,:description,:user_id)
  end

 def set_service
      @service = Service.find(params[:id])
    end

end
