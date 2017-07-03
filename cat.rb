class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time <= 12
      return "#{@name} likes to eat at #{@meal_time} AM."
    else
      @meal_time = @meal_time - 12
      return "#{@name} likes to eat at #{@meal_time} PM."
      @meal_time = @meal_time + 12
    end
  end

  def meow
    if @meal_time <= 12
      return "My name is #{@name} and I like to eat #{@preferred_food} at #{@meal_time} AM."
    else
      @meal_time = @meal_time - 12
      return "My name is #{@name} and I like to eat #{@preferred_food} at #{@meal_time} PM."
      @meal_time = @meal_time + 12
    end
  end
end

cat1 = Cat.new('Tom', 'Chocolate', 9)

cat2 = Cat.new('Jerry', 'Ice Cream', 23)

puts cat1.meow

puts cat2.meow
