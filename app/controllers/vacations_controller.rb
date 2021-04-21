class VacationsController < ApplicationController
    def index
        @vacations = Vacation.all
        render json: @vacations
    end    

    def show
        @vacation = Vacation.find(params[:id])
        render json: @vacation.to_json
    end    

    def new
        @vacation = Vacation.new

        render json: @vacation
    end

    def create
        @vacation = Vacation.create(vacation_params)

        render json: @vacation
    end

    def destroy
        @vacation = Vacation.find(params[:id])  
        @vacation.destroy
    end

    def update
        @vacation = Vacation.find(params[:id])
        @vacation.update(vacation_params)

        render json: @vacation
    end

    private

    def vacation_params
        params.require(:vacation).permit(:title, :start_date, :end_date, :day, :note, :user_id, :location_id)
    end
end
