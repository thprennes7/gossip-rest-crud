class GossipsController < ApplicationController
	def index
		@all_gossips = Potin.all
	end
	def show
		@selected_gossip = Potin.find(params[:id])
	end
	def create
		p = Potin.create(title: params[:title], content: params[:content], user_id: User.all.sample.id)
		redirect_to gossips_path
	end
end
