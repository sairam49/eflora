class AgreementMailer < ApplicationMailer
def place_order(agreement,user)
    @user = user
    @agreement = agreement
    mail(to: agreement.horticulturist, subject: "New Order", :from => user)
  end
end
