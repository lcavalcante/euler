=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

def g(x, n)
    return (x * x) % n
end

def gcd(x, y)
    if x < y
        x, y = y, x
    end

    if y == 0
        return x
    end

    remainder = x % y
    while remainder != 0
        x = y
        y = remainder
        remainder = x % y
    end

    return y

end

def pollard_rho(n)
    x_fixed = 2
    cycle_size = 2
    x = 2
    factor = 1

    while factor == 1
        for count in 1..cycle_size
            if factor > 1
                break
            end

            x = g(x,n)
            factor = gcd((x - x_fixed).abs, n)
        end

        cycle_size *= 2
        x_fixed = x
    end

    return factor
end

number = 600851475143
while true
    result = pollard_rho(number)
    if number == result
        puts number #6857
        break
    end
    number = number / result
end
