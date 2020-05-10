class WinnerService::Create
    include ActiveModel::Validations

    attr_reader :result, :name
    validates :name, presence: true

    def initialize(params)
       @name = params[:name]
       @treasure_hunt_id = params[:puzzle_id]
    end

    def call
        valid? &&
            create_winner &&
            set_result
    end

    def create_winner
        Winner.find_or_create_by(name: @name, treasure_hunt_id: @treasure_hunt_id)
    end

    def set_result
        @result = {name: @name}
    end

end