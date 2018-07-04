class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    # if (self.sender.balance > amount && self.sender.status = "open")
    #   self.status = "rejected"
    #   return "Transaction rejected. Please check your account balance."
    # end
    
    
    if(self.status == "pending")
      self.sender.balance -= amount
      self.receiver.balance += amount
      self.status = "complete"
    end
      
    
  end
  
  def reverse_transfer
  end
  
  
end
