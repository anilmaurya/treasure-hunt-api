class WinnerService::Index
    include ActiveModel::Validations

    attr_reader :result

    def call
        set_result
    end

    def set_result
        @result = Winner.all.select(:name).as_json(only: :name)
    end

end