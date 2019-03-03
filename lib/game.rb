class Game
@key_beats_value = { "rock"=> "scissors", "paper"=> "rock", "scissors"=> "paper" }

  def initialize(player_1)
    @player = player_1

  end

  def player_1
    @player
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def self.play
    @key_beats_value
  end

  def player_action(throw)
    @throw = throw
  end

  def self.key_beats_value(player_choice)
     @key_beats_value[player_choice]
  end

  def self.computer_action
    @computer_throw = @key_beats_value.keys.sample
  end


end
