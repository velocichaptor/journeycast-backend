class LocationsController < ApplicationController
    def index
        @locations = Location.all
        render json: @locations
    end    

    def show
        @location = Location.find(params[:id])
        render json: @location
    end    


    def new
        @location = Location.new

        render json: @location
    end

    def create
        @location = Location.create(location_params)

        render json: @location
    end

    def destroy
        @location = Location.find(params[:id])  
        @location.destroy
    end

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)

        render json: @location
    end

    private

    def location_params
        params.require(:location).permit(:name)
    end
end
