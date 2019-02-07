class LikesController < ApplicationController
	def create
		like = Like.create(potin_id: params[:id], user_id: session[:user_id])
		redirect_to request.referrer
	end
	def destroy
		selected_like = Like.find_by(potin_id: params[:id].to_i, user_id: session[:user_id])
		selected_like.destroy
		redirect_to request.referrer
	end
end
