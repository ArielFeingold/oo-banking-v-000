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
      if @sender.valid? == false
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      elsif @status != "complete" && @sender.valid? == true

      else
          @sender.balance = @sender.balance - @amount
          @receiver.balance = @receiver.balance + @amount
          @status = "complete"

      end
    end
end
