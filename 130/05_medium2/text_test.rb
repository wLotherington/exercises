require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @paragraph = Text.new(@file.read)
  end

  def teardown
    @file.close
  end

  def test_swap
    actual_text = @paragraph.swap('a', 'e')
    expected_text = <<~TEXT
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT
    assert_equal(expected_text, expected_text)
  end

  def test_word_count
    assert_equal 72, @paragraph.word_count
  end
end