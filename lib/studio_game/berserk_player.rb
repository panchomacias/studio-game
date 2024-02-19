require_relative "player"

module StudioGame
  class BerserkPlayer < Player
    def initialize(name, health = 100)
      super(name, health)
      @boost_count = 0
    end

    def berserk?
      @boost_count > 5
    end

    def boost
      super
      @boost_count += 1
      puts "#{@name} is berserk!" if berserk?
    end

    def drain
      if berserk?
        boost
      else
        super
      end
    end
  end

  if __FILE__ == $0
    berserker = BerserkPlayer.new("berserker", 50)
    6.times { berserker.boost }
    2.times { berserker.drain }
    puts berserker.health
  end
end
