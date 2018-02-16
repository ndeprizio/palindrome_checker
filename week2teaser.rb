@input_arr = []

def begin_screen
  puts "Enter a word or phrase to see if it's a palindrome"
  input = gets.strip.downcase
  @input_arr = input.split('')
  array_check
end

def array_check
  if @input_arr.length < 2
    puts "It's a palindrome"
  else
    if @input_arr.first == @input_arr.last
      @input_arr.pop
      @input_arr.shift
      array_check
    else
      puts "It's not a palindrome"
    end
  end
  @input_arr = []
  begin_screen
end

begin_screen

#how would i do this with loops? there's probably a more efficient way
