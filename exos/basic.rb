CONSTANT = true
CONSTANT2 = true

$my_string = "string"
$my_symbol = :symbol

$my_array = []
$my_float = 0.1

$my_nil = nil

$my_boolean = false

def hello
    return "Hello, Ruby World!"
end

def nothing(param1 = nil, param2 = nil, param3 = nil)
end

def fibonacci(param)
    if not param >= 2
        return param
    else
        return fibonacci(param - 1) + fibonacci(param - 2)
    end   
end

def who_is_bigger(a, b, c)
    array = [a, b, c]
    array.each do |param|
        return "nil detected" if param == nil     
    end
    if a == array.max 
        return "a is bigger"
    elsif b == array.max 
        return "b is bigger"
    elsif c == array.max 
        return "c is bigger"
    end
end

def reverse_upcase_noLTA(param)
    return param.reverse.upcase.delete('L').delete('T').delete('A')
end

def array_42(param)
    return param.include?(42)
end

def magic_array(param)
    return param.flatten.reverse.map{|value| value * 2}.reject{|value| value % 3 == 0}.uniq.sort
end