class WinnerService::Index
    include ActiveModel::Validations

    attr_reader :result

    def call
        set_result
    end

    def set_result
        @result = Winner.includes(:treasure_hunt).all.as_json(only: :name, methods: [:puzzle_name])
    end

end