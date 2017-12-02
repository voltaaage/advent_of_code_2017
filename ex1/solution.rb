def captcha_sum(input)
  puts input
  digits = input.split('').map(&:to_i)
  sum = 0

  digits.each_with_index do |digit, index|
    sum += digit if digit == digits[index - 1]
  end

  sum
end

def solution_1
  file = './input.txt'
  input = File.read(file).strip
  solution = captcha_sum(input)

  puts "Input:"
  puts input

  puts "Solution:"
  puts solution
end
