class Dungeon

  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end

  class Player
    def initialize(player_name)
      @name = player_name
    end

    private

    def player_params
      params.permit(:player_name, :location)
    end
  end

  class Room
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
  end

  private

  def dungeon_params
    params.permit(:player_name)
  end
end  