require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'


class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(10)
  end

  def test_accept_money
    @transaction.amount_paid = 10
    money = @register.total_money + @transaction.amount_paid
    @register.accept_money(@transaction)
    assert_equal(@register.total_money, money)
  end

  def test_change
    @transaction.amount_paid = 20
    assert_equal(10, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $#{@transaction.item_cost}.\n") do 
      @register.give_receipt(@transaction)
  end
end