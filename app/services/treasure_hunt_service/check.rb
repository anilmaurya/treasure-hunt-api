class TreasureHuntService::Check
    attr_reader :result

    def initialize(params)
        @south, @west, @north, @east = params[:coordinates].split(',').collect(&:to_f)
        @zoom = params[:zoom].to_i
    end

    def call
        valid_zoom &&
            load_treasure_hunt &&
            coordinates_check
    end

    def valid_zoom
        return true if @zoom > 7
        @result = {}
        false
    end

    def load_treasure_hunt
        @treasure_hunt =  TreasureHunt.first
        return @treasure_hunt if @treasure_hunt.present?
        @result = {}
        false
    end

    def coordinates_check
        long = @treasure_hunt.long
        lat = @treasure_hunt.lat
        
        @result = if @south < lat && @north > lat &&  @west < long && @east > long
                    {lat: lat, long: long}
                  else
                    {}
                  end
    end
end