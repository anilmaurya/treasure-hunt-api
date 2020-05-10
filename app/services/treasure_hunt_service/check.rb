class TreasureHuntService::Check
    attr_reader :result

    def initialize(params)
        @south, @west, @north, @east = params[:coordinates].split(',').collect(&:to_f)
        @zoom = params[:zoom].to_i
        @treasure_hunt_id = params[:puzzle_id]
    end

    def call
        load_treasure_hunt &&
            valid_zoom &&
            coordinates_check
    end

    def valid_zoom
        return true if @zoom > @treasure_hunt.zoom_level
        @result = {}
        false
    end

    def load_treasure_hunt
        @treasure_hunt =  TreasureHunt.find(@treasure_hunt_id)
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