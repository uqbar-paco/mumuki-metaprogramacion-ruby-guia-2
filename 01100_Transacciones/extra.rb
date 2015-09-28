module TransactionalObject
  def begin_transaction!
    Transaction
  end
end

module Transaction
  def self.commit!
    @commted = true
  end
  def self.rolllback!
    @rolllbacked = true
  end
  def reset!
    @commted = false
    @rolllbacked = false
  end
end