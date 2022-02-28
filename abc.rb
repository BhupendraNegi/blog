def series(n = 10)
    a = [0, 1]
    i = 0
    n.times do |x|
        b = a[i] + a[i + 1]
        a << b
        i = i + 1
    end
    return a
end

puts series


def factorial(number)

    return "Enter valid number" if number < 0

    if [0, 1].include?(number)
        1
    else
        number * factorial(number - 1)
    end
end
puts "Enter  Number"
number=gets.chomp.to_i
puts factorial(number)
