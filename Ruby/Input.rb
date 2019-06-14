=begin
This Input class was designed to ease the use of interacting with user input
Methods:
  public:
    1. get_int_input() => Get integer input and return it
       Note   : Repeatedly prompts to enter number until valid number is entered
       Returns: integer
  private:
    1. is_number()     => Determine if argument is integer
       Returns: Boolean
=end

class Input
  def initialize(show_prompts: false, repeat_prompts: true)
    @show_prompts = show_prompts
    @repeat_prompts = repeat_prompts
  end

  def get_int_args
    number_args = []
    for arg in ARGV
      if is_number(arg)
        number_args.push(arg.to_i)
      end
    end
    return number_args
  end

  def get_int_input    
    loop do
      numbers = []
      if @show_prompts
        print "Enter number: "
      end
      u_number = (STDIN.gets.chomp).split(" ")
      u_number.each do |x|
        if is_number(x)
          numbers.push(x.to_i)
        else
          puts "Enter an integer."
        end
      end
      if !@repeat_prompts
        break
      end
      return numbers
    end
  end


  private
  def is_number(number)
    int_number = Integer(number) rescue false
    return number.to_i == int_number
  end
end
