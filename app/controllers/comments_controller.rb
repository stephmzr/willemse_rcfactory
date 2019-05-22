class CommentsController < ApplicationController
    def create
        @commentaire = Comment.new(comment_params)
        @commentaire.interaction.id = params[:interaction_id]

        @commentaire.save

        redirect_to interaction_path(@commentaire.articles_id)
    end 


private
    def post_params
    params.require(: post).permit(: link,: title)
    end
end

end