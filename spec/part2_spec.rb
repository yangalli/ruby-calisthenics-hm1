require 'part2'

describe RockPaperScissors do
  before(:each) do
    @rock = ['Armando', 'R']
    @paper = ['Dave', 'P']
    @scissors = ['Sam', 'S']
  end

  describe 'game' do
    it 'rock breaks scissors [10 points]' do
      game = [@rock, @scissors]

      expect(RockPaperScissors.rps_game_winner(game)).to eq(@rock)
    end

    it 'scissors cut paper [10 points]' do
      game = [@paper, @scissors]

      expect(RockPaperScissors.rps_game_winner(game)).to eq(@scissors)
    end

    it 'paper covers rock [10 points]' do
      game = [@rock, @paper]

      expect(RockPaperScissors.rps_game_winner(game)).to eq(@paper)
    end

    it 'first player wins if both use same strategy [10 points]' do
      game = [@scissors, ['Dave','S']]

      expect(RockPaperScissors.rps_game_winner(game)).to eq(@scissors)
    end
  end

  # it "should raise NoSuchStrategyError if strategy isn't R, P, or S [10 points]" do
  #   game = [@rock, ['Dave', 'w']]

  #   expect(RockPaperScissors.rps_game_winner(game)).to raise_error(RockPaperScissors::NoSuchStrategyError, "Strategy must be one of R,P,S")
  # end

  describe 'tournament' do
    it 'base case [20 points]' do
      game = [@rock, @paper]

      expect(RockPaperScissors.tournament_winner(game)).to eq(@paper)
    end

    it 'recursive case [30 points]' do
      tourney = [
        [
          [ ["Armando", "P"], ["Dave", "S"] ],
          [ ["Richard", "R"], ["Michael", "S"] ]
        ],
        [
          [ ["Allen", "S"], ["Omer", "P"] ],
          [ ["David E.", "R"], ["Richard X.", "P"] ]
        ]
      ]

      expect(RockPaperScissors.tournament_winner(tourney)).to eq(['Richard', 'R'])
    end
  end
end