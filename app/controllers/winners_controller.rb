class WinnersController < ActionController::API
    
    def index
        service = WinnerService::Index.new
        service.call
        render json: {succes: true, result: service.result}
    end

    def create
        service = WinnerService::Create.new(params)
        service.call
        render json: {succes: true, result: service.result}
    end

end
