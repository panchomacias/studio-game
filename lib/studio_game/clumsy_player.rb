require_relative "player"

module StudioGame
  class ClumsyPlayer < Player
    def found_treasure(name, points)
      points = points / 2.0
      super(name, points)
    end
  end

  if __FILE__ == $0
    clumsy = ClumsyPlayer.new("klutz")

    clumsy.found_treasure("flute", 50)
    clumsy.found_treasure("flute", 50)
    clumsy.found_treasure("flute", 50)
    clumsy.found_treasure("star", 100)

    clumsy.found_treasures.each do |name, points|
      puts "#{name}: #{points} points"
    end
    puts "#{clumsy.points} total points"
  end
end
