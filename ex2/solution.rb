require 'rubygems'
require 'byebug'

def corruption_checksum(input)
  matrix = IO.readlines(input)
  sum = 0

  matrix.each do |row|
    sum += row_difference(row)
    # sum += row_divisible(row)
  end

  sum
end

def row_difference(row)
  vals = row.strip.split(/\t/).map(&:to_i)
  min = 9999999
  max = -9999999

  vals.each do |val|
    min = val if val < min
    max = val if val > max
  end

  max - min
end

def row_divisible(row)
  vals = row.strip.split(/\t/).map(&:to_i)
  vals.sort!

  vals.each_with_index do |val, i|
    (0..i-1).each do |j|
      return vals[i] / vals[j] if (vals[i] % vals[j] == 0)
    end
  end

  0
end

# puts corruption_checksum('./input.txt')
