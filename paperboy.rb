class Paperboy

  def initialize(name)
    @name = name
    @exp = 0
    @amt = 0.0
    @old_quota = 50
    @new_quota
    @num_of_over_deliveries
  end

  def quota
    @new_quota = @old_quota + (@num_of_over_deliveries / 2)
    puts "#{@name}'s next quota is #{@new_quota} deliveries."
  end

  def deliver(start_address, end_address)
      (start_address..end_address).each do
      @exp += 1
      end

    puts "#{@name} made #{@exp} deliveries"

      if @exp >= @old_quota
       @num_of_over_deliveries = @exp - @old_quota
       @amt = (@num_of_over_deliveries * 0.5) + (@old_quota * 0.25)
       @new_quota = @exp
       puts "...and earned $#{@amt}!"
       quota
    else
      @amt = (@exp * 0.25) - 2
      puts "...#{@name} did not meet their quota and earned only $#{@amt} after being deducted $2!!"
    end

    def report
      puts "I'm #{@name}, I've delivered #{@exp} papers and I've earned $#{@amt} so far!"
    end
  end
end

eiji = Paperboy.new('Eiji')
bob = Paperboy.new('Bob')

#Over quota
eiji.deliver(1, 59)
#Under quota
bob.deliver(88, 100)
#Report
eiji.report
bob.report
