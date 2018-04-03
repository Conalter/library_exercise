
class SportsTeam

  attr_accessor :team_name, :players, :coach_name

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach_name = coach
  end

  # def team_name()
  #   @team_name
  # end
  #
  # def players()
  #   @players
  # end
  #
  # def coach_name()
  #   @coach_name
  # end
  #
  # def set_coach_name(coach)
  #   @coach_name = coach
  # end

    def additonal_player(player)
      @players.push(player)
    end

    def player_name(player_name)
      for player in @players
        if player_name == player
          return true
        end
      end
    end

end
