module ApplicationHelper
  def set_user_dashboard
    if user_signed_in?
      Dashboard.where(:user_id => current_user.id).first
    end
  end
end
