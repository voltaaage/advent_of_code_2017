def captcha_sum(input, halfway)
  digits = input.split('').map(&:to_i)
  sum = 0
  distance = halfway ? digits.length / 2 : 1

  digits.each_with_index do |digit, index|
    sum += digit if digit == digits[index - distance]
  end

  sum
end

def solution
  files = %w(./input1.txt ./input2.txt)
  files.each_with_index do |file, index|
    input = File.read(file).strip
    halfway = index == 1
    solution = captcha_sum(input, halfway)

    puts "Solution #{index + 1}: \n #{solution}"
  end
end

solution
