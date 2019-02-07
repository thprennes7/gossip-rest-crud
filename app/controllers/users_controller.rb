class UsersController < ApplicationController
	def index
		@all_users = User.all
	end
	def show
		@selected_user = User.find(params[:id])
		@selected_city = User.find(params[:id]).city.name
	end

	def create
		u = User.create(last_name: params[:last_name], first_name: params[:first_name], email: params[:email], age: params[:age], password: params[:password], description: params[:description], city_id: params[:city].to_i)
		redirect_to root_path
	end

	def new
		@all_cities = City.all
	end
end
