class TruckFinderController < ApplicationController
	def index
    # if params
    #   p "*" * 100
    #   p params
    # end
    # @trucks = Truck.all
    # @trucks = Truck.select("distinct applicant")
    if (params[:truck_name])
      @trucks = Truck.where(applicant:params[:truck_name].downcase)
    elsif (params[:distance])
      @trucks = Truck.all
    elsif (params[:food_item])
      @trucks = Truck.where('food_items LIKE ?', '%'+params[:food_item].downcase+'%').all
    else
      @trucks = Truck.all
    end
	end
end
