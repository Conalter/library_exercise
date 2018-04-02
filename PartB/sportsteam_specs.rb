
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
      assert_equal("Shuggie", "Jimmy", "Davie", "Frankie", "Boab", @sportsteam.players)
    end

    def test_coach
      assert_equal("Coach McGregor", @sportsteam.coach)
    end

    # def test_set_coach(coach)
    #   @coach.set_coach ("Coach McDonald")
    #   assert_equal("Coach McDonald", @couch.coach)
    # end

end
