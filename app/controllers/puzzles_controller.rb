class PuzzlesController < ActionController::API
    
    def index
        render json: {succes: true, result: TreasureHunt.all.collect(&:id)}
    end

    def show
        puzzle = TreasureHunt.find params[:id]
        render json: {succes: true, result: puzzle.as_json(only: [:id, :description])}
    end

end
