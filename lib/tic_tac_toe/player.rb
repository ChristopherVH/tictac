module TicTacToe
  class Player

    attr_reader :color, :name

    def initialize(input)
      raise "hey" if input == {}
      @color = input[:color]
      @name = input[:name]
    end
  end
end
