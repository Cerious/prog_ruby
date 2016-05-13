require_relative 'word_count'
require 'minitest/autorun'

class TestCountFrequency < Test::Unit::TestCase

  def test_empty_list
    assert_equal({}, word_count([]))
  end

  def test_single_word
    assert_equal ({"matz" => 1}, word_count(["matz"]))
  end

  def test_two_different_words
    assert_equal {"matz" => 2, "Nadia" => 3}, word_count(["matz", "matz", "Nadia", "Nadia", "Nadia"])
  end

  def test_two_different_words_with_non_adjacent_repeat
    assert_equal {"matz" => 2, "Nadia" => 1}, word_count(["matz", "Nadia", "matz"])
  end

end
