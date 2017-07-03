class BankClass
  def initialize(balance, interest)
    @balance = balance
    @interest = interest
  end

  def deposit(amt)
    @balance += amt
    puts "Your balance is #{@balance}."
  end

  def withdrawl(amt)
    @balance = @balance - amt
    puts "Your balance is #{@balance}."
  end

  def gain_interest
    @balance = @balance * @interest
    puts "Your balance is #{@balance}."
  end
end

eiji = BankClass.new(0, 1.15)

eiji.deposit(50)

eiji.deposit(50)

eiji.withdrawl(25)

eiji.gain_interest
