class DashboardsController < ApplicationController
  def new
  end

  def create
    @record = Dashboard.where(:user_id => current_user.id).first

    if @record.nil?
    @value = Dashboard.new(dashboard_params)
       if @value.save
       update = current_user.id
       @value.update_attribute(:user_id,update)
       else
       render 'new'
       end
    else
      show
      render 'show'
    end
  end

  def edit
    @dashboard = Dashboard.find(params[:id])
  end

  def show
    @dashboard = Dashboard.where(:user_id => current_user.id).first
  end

 def update
  @dashboard = Dashboard.find(params[:id])

  if @dashboard.update(dashboard_params)
    redirect_to @dashboard
  else
    render 'edit'
  end
end



 private

  def dashboard_params
    params.require(:dashboard).permit(:name,:qualification,:contact,:user_id)
  end

end
