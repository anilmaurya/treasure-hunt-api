class ApplicationController < ActionController::API
    
    def hunt
        service = TreasureHuntService::Check.new(params)
        service.call
        render json: {succes: true, result: service.result}
    end

end
