require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @transaction = Transaction.new(15)
    @register = CashRegister.new(1000)
  end

  def capture_stdout(&block)
    original_stdout = $stdout
    $stdout = fake = StringIO.new
    begin
      yield
    ensure
      $stdout = original_stdout
    end
    fake.string
  end

  def test_accept_money
    @transaction.amount_paid = 100
    assert_equal(1100, @register.accept_money(@transaction))
  end

  def test_change
    @transaction.amount_paid = 20
    assert_equal(5, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $#{@transaction.item_cost}.\n") { @register.give_receipt(@transaction) }
  end

  def test_prompt_for_payment
    input = StringIO.new('20\n')
    capture_stdout { @transaction.prompt_for_payment(input: input) }
    assert_equal(20, @transaction.amount_paid)
  end
end