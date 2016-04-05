class AgreementsController < ApplicationController

 def new
 @users = User.where(:horticulturist => true).pluck(:email)
  end

  def create
    @agreement = Agreement.new(agreement_params)
    if @agreement.save
      update = current_user.email
      @agreement.update_attribute(:from , update)
      #send email
      @user= current_user.email
      AgreementMailer.place_order(@agreement,@user).deliver_now
    else
      render 'new'
    end
  end

  def index
    @agreements = Agreement.where(from: current_user.email)
  end

  def received
    @received = Agreement.where(horticulturist: current_user.email)
  end

  private

  def agreement_params
    params.require(:agreement).permit(:horticulturist,:policy,:flowers,:from)
  end

end
