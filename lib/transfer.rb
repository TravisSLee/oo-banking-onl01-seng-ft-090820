class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?(sender)
    sender_account = BankAccount.new(self.sender)
    receiver_account = BankAccount.new(self.receiver)
    if sender_account.valid? == TRUE && receiver_account.valid? == TRUE
      TRUE
    else
      FALSE
    end
  end
end
