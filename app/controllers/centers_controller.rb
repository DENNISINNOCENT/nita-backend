class CentersController < ApplicationController
    def index
        @centers = Center.all
        render json: @centers, status: :ok
    end

    def show
        @center = find_center
        render json: @center, status: :ok
    end

    def create
        @center = Center.create(center_params)
        render json: @center, status: :created

    end
    def update
        @center = find_center
        @center.update(center_params)
        render json: @center

    end
    def destroy
        @center = find_center
        @center.destroy
        head :no_content
    end

    private
    def find_center
        Center.find(params [:id])
    end
    def center_params
        params.permit(:name, :centerCode)
    end

    def render_response_not_found
    end

end
