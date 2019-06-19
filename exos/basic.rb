CONSTANT = ''
CONSTANT2 = ''
$my_string = 'my string'
$my_symbol = :symbol
$my_array = ['array']
$my_float = 5.20
$my_nil = nil
$my_boolean = true

def hello
  return "Hello, Ruby World!"
end

def nothing(param1 = nil, param2 = nil, param3 = nil)

end

def reverse_upcase_noLTA(str)
  return str.reverse.upcase.delete('L').delete('T').delete('A')
end

def array_42(my_array)
  return my_array.include?(42)
end

def magic_array(my_array)
  return my_array.flatten.reverse.map { |x| x * 2 }.delete_if { |x| x%3 == 0 }.uniq.sort
end

puts 'Coucou Dan'
puts array_42([42])
