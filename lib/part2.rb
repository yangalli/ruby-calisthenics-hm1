class RockPaperScissors
  class WrongNumberOfPlayersError < StandardError ; end
  class NoSuchStrategyError < StandardError ; end

  def self.rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2

    possibleStrategies = ["R", "P", "S"]

    player1 = game.first
    player2 = game.last

    player1Strategy = player1[1]
    player2Strategy = player2[1]

    if !possibleStrategies.include?(player1Strategy) || !possibleStrategies.include?(player2Strategy)
      raise StandardError
    end

    case player1Strategy
    when "S"
      if player2Strategy === "R"
        return player2
      else
        return player1
      end
    when "P"
      if player2Strategy === "S"
        return player2
      else
        return player1
      end
    when "R"
      if player2Strategy === "P"
        return player2
      else
        return player1
      end
    end
  end

  def self.tournament_winner(tournament)
    if (tournament[0][0].is_a?(String))
      return self.rps_game_winner([tournament[0], tournament[1]])
    end

    self.rps_game_winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end
end