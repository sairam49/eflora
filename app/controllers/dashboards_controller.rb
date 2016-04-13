class DashboardsController < ApplicationController
  before_action :load_dashboard, only: [:products,:services]
  before_filter :require_permission, only: :edit

  def require_permission
    if current_user != Dashboard.find(params[:id]).user
      redirect_to root_path
    end
  end

  def new
    if current_user.dashboard.present?
      redirect_to dashboard_path(current_user.dashboard)
    else
      @dashboard = Dashboard.new
    end
  end

  def create
    @record = Dashboard.where(:user_id => current_user.id).first

    if @record.nil?
      @dashboard = Dashboard.new(dashboard_params)
      if @dashboard.save
        update = current_user.id
        @dashboard.update_attribute(:user_id,update)
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
    @dashboard = Dashboard.find(params[:id])
  end

  def update
    @dashboard = Dashboard.find(params[:id])

    if @dashboard.update(dashboard_params)
      redirect_to @dashboard
    else
      render 'edit'
    end
  end

  def products
    @products = @dashboard.try(:user).try(:products)
  end

  def services
    @services = @dashboard.try(:user).try(:services)
  end

  def cart


  end

  private
    def dashboard_params
      params.require(:dashboard).permit(:name,:qualification,:contact,:user_id)
    end

    def load_dashboard
      @dashboard = params[:id] ? Dashboard.find(params[:id]) : Dashboard.new(dashboard_params)
    end

end
