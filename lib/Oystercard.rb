class Oystercard
  LIMIT = 90
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add(value)
    @balance += value
    raise 'Max limit is £90' if @balance > LIMIT
  end
end
