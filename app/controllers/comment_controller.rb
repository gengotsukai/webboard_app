class CommentController < ApplicationController
	def create
		@comment = Comment.new(params[:comment].permit(:theme_id, :name, :body))
		@comment.save
		redirect_to themes_show_path(params[:comment]['theme_id'])
	end
end
