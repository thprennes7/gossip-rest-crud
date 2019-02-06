class GossipsController < ApplicationController
	def index
		@all_gossips = Potin.all
	end
	def show
		if Potin.find(params[:id]).present
			@selected_gossip = Potin.find(params[:id])
		else
			@selected_gossip = nil
		end
	end
end
