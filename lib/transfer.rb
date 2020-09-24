class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
   sender.valid? && receiver.valid?
  end
  
  def execute_transaction(amount)
    if valid?
      sender.withdraw(amount) 
      receiver.deposit(amount)
    end
  end
  
end
