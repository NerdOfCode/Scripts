# Check if a given number is prime

require_relative "Input.rb"

def is_prime(number)
  for factor in 2..number/2
    if number % factor == 0
      return false
    end
  end
  return true
end

input = Input.new(show_prompts: true, repeat_prompts: true)
if input.get_int_args.length > 0
  input.get_int_args.each do |x|
    puts "isPrime(#{x}): #{is_prime(x)}"
  end
else
  input.get_int_input.each do |x|
    puts "isPrime(#{x}): #{is_prime(x)}"
  end
end
