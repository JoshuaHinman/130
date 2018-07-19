require 'minitest/autorun'
require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @text_file = File.open("text.txt")
    @example_text = @text_file.read
    @text = Text.new(@example_text.clone)
  end

  def test_swap
    @example_text.gsub!('a', 'e')
    assert_equal(@text.swap('a', 'e'), @example_text)
  end

  def test_word_count
    count = @example_text.split.count
    assert_equal(@text.word_count, count)
  end

  def teardown
    @text_file.close
  end
end