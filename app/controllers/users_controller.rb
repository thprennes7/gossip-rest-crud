class UsersController < ApplicationController
	def index
		@all_users = User.all
	end
	def show
		if @selected_user = User.find(params[:id])
		else
			@selected_user = nil
		end
	end
end
