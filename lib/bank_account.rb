require 'pry'
class BankAccount

attr_accessor :balance, :status
attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

  def valid?
    # binding.pry
    @status = "open" && @balance > 0.to_i ? true : false

  end
    binding.pry

end
