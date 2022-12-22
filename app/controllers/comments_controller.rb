class CommentsController < ApplicationController
	def create
		@friend=Friend.find(params[:friend_id])
		@comment=@friend.comments.create(comments_params)
		redirect_to friend_path(@friend)
	end



	def destroy
		@friend=Friend.find(params[:friend_id])
		@comment=@friend.comments.find(params[:id])
		@comment.destroy
		redirect_to friend_path(@friend),status: :see_other
	end
	private
	def comments_params
		params.require(:comment).permit(:commenter,:body)
	end
end
