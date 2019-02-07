class CommentsController < ApplicationController
    def create
        c = Comment.create(content: params[:content], user_id: session[:user_id], potin_id: params[:potin])
        redirect_to gossip_path(params[:potin])
    end

    def edit
        @selected_comment = Comment.find(params[:id])
    end

    def destroy
        @selected_comment = Comment.find(params[:id])
        potin = @selected_comment.potin_id
		@selected_comment.destroy
        redirect_to gossip_path(potin)
    end

    def update
        @selected_comment = Comment.find(params[:id])
		@selected_comment.update(content: params[:content])
		redirect_to gossip_path(@selected_comment.potin_id)
    end

    def self.comment_gossip(potin)
        all_comments = nil
        all_comments = Comment.where(potin_id: potin)
        comment_count = 0
        all_comment.each do
            comment_count += 1
        end
        return comment_count
    end
end