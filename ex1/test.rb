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

describe 'captcha_halfway_sum' do
  it 'returns the sum of all digits when all digits match the digits halfway ahead' do
    input = '1212'
    result = captcha_halfway_sum(input)
    expected = 6

    assert_equal(expected, result)
  end

  it 'returns 0 because none of the digits match halfway around' do
    input = '1221'
    result = captcha_halfway_sum(input)
    expected = 0

    assert_equal(expected, result)
  end

  it 'produces 4, because both 2s match each other, but no other digit has a match' do
    input = '123425'
    result = captcha_halfway_sum(input)
    expected = 4

    assert_equal(expected, result)
  end

  it 'return 12' do
    input = '123123'
    result = captcha_halfway_sum(input)
    expected = 12

    assert_equal(expected, result)
  end

  it 'returns 4' do
    input = '12131415'
    result = captcha_halfway_sum(input)
    expected = 4

    assert_equal(expected, result)
  end
end
