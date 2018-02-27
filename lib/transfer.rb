require 'pry'

class Transfer

    attr_accessor :sender, :receiver, :amount, :status

    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end

    def valid?
      @receiver.valid? && @sender.valid? ? true : false
    end

    def execute_transaction
        sender.balance = sender.balance - @amount
        receiver.balance = receiver.balance + @amount
    end
end
