require("minitest/autorun")
require("minitest/rg")
require_relative("../Guest.rb")

class TestGuest < Minitest::Test

  def setup
    @guest_1 = Guest.new("George", 50)
    @guest_2 = Guest.new("Sally", 20)
    @guest_3 = Guest.new("Jim", 10)
  end

  def test_guests_have_names
    assert_equal("George", @guest_1.name)
    assert_equal("Sally", @guest_2.name)
    assert_equal("Jim", @guest_3.name)
  end

  def test_guest_wallet_amount
    assert_equal(50, @guest_1.wallet)
  end


end
