class GossipsController < ApplicationController
	def index
		@all_gossips = Potin.all
	end
	def show
		@selected_gossip = Potin.find(params[:id])
	end
	def create
		p = Potin.create(title: params[:title], content: params[:content], user_id: session[:user_id], city_id: User.find_by(id: session[:user_id]).city.id)
		if p.save
			flash[:success] = "Potin bien créé !"
			redirect_to gossips_path
		else
			render :new
		end
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
