=begin
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

def sum_pa(a1, an, n)
    return (a1 + an) * n / 2
end

a1_3 = 3
an_3 = 999
n_3 = ((an_3 - a1_3) / 3) + 1

a1_5 = 5
an_5 = 995
n_5 = ((an_5 - a1_5) / 5) + 1

a1_15 = 15
an_15 = 990
n_15 = ((an_15 - a1_15) / 15) + 1

result = sum_pa(a1_3, an_3, n_3) + sum_pa(a1_5, an_5, n_5) - sum_pa(a1_15, an_15, n_15)

puts result #233168
