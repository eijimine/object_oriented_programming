class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins > 0 && @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle (dmg)
    @health_points -= dmg
    if @lives == 0
      restart
    elsif @health_points <= 0
      @lives -= 1
      @health_points = 10
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end
