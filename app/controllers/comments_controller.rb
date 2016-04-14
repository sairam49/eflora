class CommentsController < ApplicationController

  def create

		@request = Request.find(params[:request_id])
		@comment = @request.comments.create(params[:comment].permit(:body))
    if @comment
      uid = current_user.id
      @comment.update_attribute(:user_id , uid)
    end

		redirect_to request_path(@request)

	end

end
