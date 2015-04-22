require_relative 'helper'

class TestCheersIntegration < Minitest::Test

  def test_zero_arguments
    output = `./cheers`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_one_valid_argument_name
    output = `./cheers Abby`
    expected = <<EOS
Give me an.. A
Give me a.. B
Give me a.. B
Give me a.. Y
Abby's just GRAND!
EOS
    assert_equal expected, output
  end

  def test_one_valid_argument_name_with_hyphen
    output = `./cheers Abby-gale`
    expected = <<EOS
Give me an.. A
Give me a.. B
Give me a.. B
Give me a.. Y
Give me a.. G
Give me an.. A
Give me an.. L
Give me an.. E
Abby-gale's just GRAND!
EOS
    assert_equal expected, output
  end

  def test_one_invalid_argument_nonword_chars
    output = `./cheers 08/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_one_invalid_argument_whitespace
    output = `./cheers " "`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_one_invalid_argument_empty_string
    output = `./cheers ""`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_two_valid_arguments_birthday_to_come_this_year
    output = `./cheers Abby 08/25`
    expected = <<EOS
Give me an.. A
Give me a.. B
Give me a.. B
Give me a.. Y
Abby's just GRAND!
Awesome! Your birthday is in 125 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_valid_arguments_different_order
    output = `./cheers 08/25 Abby`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_two_valid_arguments_birthday_passed_this_year
    output = `./cheers Abby 03/25`
    expected = <<EOS
Give me an.. A
Give me a.. B
Give me a.. B
Give me a.. Y
Abby's just GRAND!
Awesome! Your birthday is in 337 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_valid_arguments_skip_leading_zero
    output = `./cheers Abby 8/25`
    expected = <<EOS
Give me an.. A
Give me a.. B
Give me a.. B
Give me a.. Y
Abby's just GRAND!
Awesome! Your birthday is in 125 days! Happy Birthday in advance!
EOS
    assert_equal expected, output
  end

  def test_two_arguments_day_before_month
    output = `./cheers Abby 25/08`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_two_arguments_date_with_year
    output = `./cheers Abby 08/25/15`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_two_invalid_arguments
    output = `./cheers 9829 25/08`
    expected = <<EOS
I'd cheer for you, if only I knew who you were :(
Try again with ./cheers.rb [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

end
