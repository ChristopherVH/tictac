module TicTacToe
  class Game

    attr_accessor :current_player, :other_player

    def initialize(players, board = Board.new)
      @players = players.shuffle
      @board = board
      @current_player = @players[0]
      @other_player = @players[1]
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def solicit_move
      "#{@current_player.name}: Enter a number between 1 and 9 to make your move"
    end

    def get_move(human_move = gets.chomp)
      human_move_to_coordinate(human_move)
    end

    def game_over_message
      return "#{@current_player.name} won!" if @board.game_over == :winner
      return "The game ended in a tie" if @board.game_over == :draw
      
    end

    def play
      until @board.game_over
        solicit_move
        get_move
        switch_players
      end
      game_over_message
    end

    private

    def human_move_to_coordinate(human_move)
      human_move = human_move.to_i
      col = human_move / 3
      row = human_move % 3
      return [2,2] if col == 3
      [row-1,col]
    end

  end
end
