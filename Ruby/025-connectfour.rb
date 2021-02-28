SYMBOLS = ["⚫", "⚪", "⛑", "⛩"]

class ConnectFour
  attr_reader :board, :players
  def initialize(players = 2)
    @board = Board.new
    @players = []
    for i in 0..(players-1 || 3)
      @players[i] = Player.new(i.to_s, SYMBOLS[i])
    end
  end
end

class Board
  attr_reader :grid
  def initialize
    @grid = Array.new(6) { Array.new(7) }
  end
end

class Player
  attr_reader :name, :symbol
  def initialize(name = nil, symbol = nil)
    @name = name
    @symbol = symbol
  end
end

my_game = ConnectFour.new(4)
