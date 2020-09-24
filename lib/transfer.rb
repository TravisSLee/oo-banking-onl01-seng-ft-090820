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
    person_1 = BankAccount.new(sender)
    person_2 = BankAccount.new(receiver)
    if person_1.valid? == TRUE && person_2.valid? == TRUE
      TRUE
    else
      FALSE
    end
  end
end
