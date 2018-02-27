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
      # binding.pry
      if self.valid?
        @sender.balance = @sender.balance - @amount
        @receiver.balance = @receiver.balance + @amount
        @status = "complete"
      else
        self.valid? = false
          "Transaction rejected. Please check your account balance."
      end
    end
end
