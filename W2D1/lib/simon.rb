require "byebug"

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game

  end

  def take_turn
    # debugger
    while @game_over == false
      show_sequence
     require_sequence

      # if player_input =! @seq
      #   @game_over = true
      #   break
      # end
      round_success_message if @game_over == false
      @sequence_length += 1
    end
      game_over_message
      reset_game
  end

  def show_sequence
    add_random_color
    puts "match this sequence!"
    sleep(2)
    system("clear")
    seq.each do |color|
      puts color
      sleep(2)
      system("clear")
      puts " "
      sleep(1)
      system("clear")
    end
  end

  def require_sequence
    player_sequence = []

    until player_sequence.length == @sequence_length
      puts "enter the next color!"
      player_sequence << gets.chomp
      unless @seq[0..player_sequence.length] == player_sequence
        @game_over = true
        break
      end
      system("clear")
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "That's correct!"
    sleep(1)
  end

  def game_over_message
    puts "LOL you lost try getting a better memory."
    sleep(3)
    puts "new game!"
    sleep(1)
    system("clear")
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
