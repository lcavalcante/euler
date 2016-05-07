def fermat_factor(n)
    a = (Math.sqrt(n)).ceil
    b2 = a * a - n

    until (Math.sqrt(b2)).modulo(1) == 0
        a += 1
        b2 = a * a - n
    end
    return a + Math.sqrt(b2)
end

puts fermat_factor(103)
