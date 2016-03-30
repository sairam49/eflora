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
  end

  def show
    @present = Dashboard.where(:user_id => current_user.id).first

  end

 private

  def dashboard_params
    params.require(:dashboard).permit(:name,:qualification,:contact,:user_id)
  end

end
