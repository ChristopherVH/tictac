module TicTacToe
  class Board

    attr_accessor :grid

    def initialize(input = {})
      default = {
       grid: Array.new(3){Array.new(3)}
      }
      wow = default.merge(input)
      @grid = wow[:grid]
    end

    def get_cell(x, y)
      @grid[y][x]
    end

    def set_cell(x, y, value)
      @grid[y][x] = value
    end

    def game_over
      return :draw if draw?
      return winner? unless winner?
      return :winner if winner?
    end

    def formatted_grid
      @grid.each {|arr| p arr }
    end

    private

    def default_grid
      Array.new(3){Array.new(3)}
    end

    def draw?
      all_filled = true
      @grid.each do |arr|
        all_filled = false if arr.any_empty?
      end
      winner? == false && all_filled
    end

    def winner?
      win = false
      @grid.each do |arr|
        win = arr[0].value if arr.all_same? && arr.none_empty?
      end
      @grid.transpose.each do |arr|
        win = arr[0].value if arr.all_same? && arr.none_empty?
      end
      diagonals.each do |arr|
        win = arr[0].value if arr.all_same? && arr.none_empty?
      end
      win
    end

    def winning_position_values(winning_position)

    end

    def winning_positions

    end

    def diagonals
    [[@grid[0][0] , @grid[1][1],  @grid[2][2]],
    [@grid[2][0] , @grid[1][1],  @grid[0][2]]]
    end

  end
end
