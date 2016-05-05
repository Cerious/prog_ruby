require_relative 'word_count'
require 'minitest/autorun'

class TestWordsFromString < Minitest::Test

  def test_empty_string
    assert_equal [], words_from_string("")
    assert_equal [], words_from_string("       ")
  end

  def test_single_word
    assert_equal ["cat"], words_from_string("cat")
    assert_equal ["cat"], words_from_string("    cat    ")
  end

  def test_many_words
    assert_equal ["godel", "escher", "bach"], words_from_string(%w{godel escher bach})
  end

  def test_ignores_punctuation
    assert_equal ["cat", "mat", "bat"], words_from_string("cat, mat?, bat.")
  end

end
