require 'minitest/autorun'
require './solution.rb'

describe 'captcha_sum' do
  it 'adds the digits with following digit that matches' do
    input = '1122'
    result = captcha_sum(input)
    expected = 3

    assert_equal(expected, result)
  end

  it 'adds the digits when they all match' do
    input = '1111'
    result = captcha_sum(input)
    expected = 4

    assert_equal(expected, result)
  end

  it 'returns 0 when none of the digits matches their next digit' do
    input = '1234'
    result = captcha_sum(input)
    expected = 0

    assert_equal(expected, result)
  end

  it 'returns 9 because the only digit that matches the next one is the last digit, 9' do
    input = '91212129'
    result = captcha_sum(input)
    expected = 9

    assert_equal(expected, result)
  end

  it 'adds the digits with following digit that matches' do
    input = '82317536746878179259195565332579493378'
    result = captcha_sum(input)
    expected = 19

    assert_equal(expected, result)
  end
end
