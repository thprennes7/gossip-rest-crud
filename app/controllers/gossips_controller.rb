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
	def edit
		@selected_gossip = Potin.find(params[:id])
	end
	def update
		@selected_gossip = Potin.find(params[:id])
		@selected_gossip.update(title: params[:title], content: params[:content])
		redirect_to gossips_path
	end
	def destroy
		@selected_gossip = Potin.find(params[:id])
		@selected_gossip.destroy
		redirect_to gossips_path
	end
end
