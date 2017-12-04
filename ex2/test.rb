require 'minitest/autorun'
require './solution.rb'

describe 'row_difference' do
  it 'returns the difference between the largest value and the smallest value in a row' do
    input = "5\t1\t9\t5"
    result = row_difference(input)
    expected = 8

    assert_equal(expected, result)
  end

  it 'returns the difference between the largest value and the smallest value in a row' do
    input = "7\t5\t3"
    result = row_difference(input)
    expected = 4

    assert_equal(expected, result)
  end

  it 'returns the difference between the largest value and the smallest value in a row' do
    input = "2\t4\t6\t8"
    result = row_difference(input)
    expected = 6

    assert_equal(expected, result)
  end
end

describe 'row_divisible' do
  it 'returns the difference between the largest value and the smallest value in a row' do
    input = "5\t9\t2\t8"
    result = row_divisible(input)
    expected = 4

    assert_equal(expected, result)
  end

  it 'returns the difference between the largest value and the smallest value in a row' do
    input = "9\t4\t7\t3"
    result = row_divisible(input)
    expected = 3

    assert_equal(expected, result)
  end

  it 'returns the difference between the largest value and the smallest value in a row' do
    input = "3\t8\t6\t5"
    result = row_divisible(input)
    expected = 2

    assert_equal(expected, result)
  end
end
