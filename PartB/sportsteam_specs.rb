
require ('minitest/autorun')
require_relative ('sportsteam_account.rb')

class TestSportsTeam < MiniTest::Test

  def setup()
    @sportsteam = SportsTeam.new(
      "CodeClan Killers", [
        "Shuggie",
        "Jimmy",
        "Davie",
        "Frankie",
        "Boab"
      ],
      "Coach McGregor"
      )
  end

    def test_team_name
      assert_equal("CodeClan Killers", @sportsteam.team_name)
    end

    def test_players
      assert_equal(["Shuggie", "Jimmy", "Davie", "Frankie", "Boab"], @sportsteam.players)
    end

    def test_coach_name
      assert_equal("Coach McGregor", @sportsteam.coach_name)
    end

    def test_set_coach_name
      @sportsteam.coach_name = "Coach McDonald"
      assert_equal("Coach McDonald", @sportsteam.coach_name)
    end

    def test_additonal_player
      assert_equal(["Shuggie", "Jimmy", "Davie", "Frankie", "Boab", "Stevie"],@sportsteam.additonal_player("Stevie"))
    end

    def test_player_name
      assert_equal(true, @sportsteam.player_name("Shuggie"))
    end

end
