class CitiesController < ApplicationController
  def index
    @all_cities = City.all
  end

  def show
    @selected_city = City.find_by(id: params[:id])
    @selected_potins = Potin.where(city_id: @selected_city.id)
  end
end
