def captcha_sum(input)
  digits = input.split('').map(&:to_i)
  sum = 0

  digits.each_with_index do |digit, index|
    sum += digit if digit == digits[index - 1]
  end

  sum
end

def solution_1
  file = './input1.txt'
  input = File.read(file).strip
  solution = captcha_sum(input)

  puts "Input:"
  puts input

  puts "Solution:"
  puts solution
end


def captcha_halfway_sum(input)
  digits = input.split('').map(&:to_i)
  sum = 0
  halfway = digits.length / 2

  digits.each_with_index do |digit, index|
    sum += digit if digit == digits[index - halfway]
  end

  sum
end

def solution_2
  file = './input2.txt'
  input = File.read(file).strip
  solution = captcha_halfway_sum(input)

  puts "Input:"
  puts input

  puts "Solution:"
  puts solution
end

solution_2
