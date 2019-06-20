CONSTANT = 'constant'
CONSTANT2 = 'constant'

$my_string = 'hello'
$my_symbol = :symbol

$my_array = []
$my_float = 5.2

$my_nil = nil

$my_boolean = true

def hello
  return "Hello, Ruby World!"
end

def nothing(first_param = nil, second_param = nil, third_param = nil)

end

def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  elsif a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(str)
  return str.reverse.upcase.delete('LTA')
end

def array_42(arr)
  return arr.include?(42)
end

def magic_array(arr)
  return arr.flatten.reverse.map{|x| x*2}.delete_if{|x| x%3 == 0}.uniq.sort
end
