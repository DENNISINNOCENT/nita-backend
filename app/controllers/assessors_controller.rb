 class AssessorsController < ApplicationController
 rescue_from  ActiveRecord::RecordNotFound,  with: :render_response_not_found

        def index
            @assessors = Assessor.all 
            render json: @assessors, status: :ok
        end
    
        def show
            @assessor = find_assessor
            render json: @assessor, status: :ok
        end
    
        def create
            @assessor = Assessor.create(assessor_params)
            render json: @assessor, status: :created
        end
    
        def update
            @assessor = find_assessor
            @assessor.update(assessor_params)
            render json: @assessor
        end
    
        def destroy
            @assessor = find_assessor
            @assessor.destroy
            head :no_content
        end
    
        private
    
        def find_assessor
            Assessor.find(param[:id])
            
        end
    
        def assessor_params
            params.permit(:name, :id, :contact, :workStation, :assessorCode, :accountName, :accountNumber, :bankName , :branchName, :branchCode)
        end

        def render_response_not_found
            render json: {error: "assesor not found"}, status: :not_found
        end
    
end
    
