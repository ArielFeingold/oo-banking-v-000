class Transfer

    attr_accessor :sender, :receiver, :amount, :status

    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @amount = amount
      @status = "pending"
    end

    def valid?
      @reciever.valid? @@ @sender.valid? ? true : flase
    end
end
