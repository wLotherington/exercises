require 'minitest/autorun'

class TestBool < Minitest::Test
  def setup
    @value = 3
    @str = "HELLooooo"
    @nil_value = nil
    @list = []
  end

  def test_odd?
    assert_equal(true, @value.odd?)
  end

  def test_downcase
    assert_equal(@str.downcase, 'hellooooo')
  end

  def test_nil
    assert_nil(@nil_value)
  end

  def test_empty
    assert_equal(true, @list.empty?)
    @list << 1
    assert_equal(false, @list.empty?)
  end

  def test_object
    assert_equal(false, @list.include?('xyz'))
    @list << 'xyz'
    assert_equal(true, @list.include?('xyz'))
  end

  def test_numeric
    assert_instance_of(Integer, @value)
  end


end