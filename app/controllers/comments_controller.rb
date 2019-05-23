class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        @comment.interaction_id = params[:interaction_id]
        @comment.contact = current_user.email
        @comment.save

        redirect_to interaction_path()
    end

private
    def comment_params
    params.require(:comment).permit(:body)
    end
end