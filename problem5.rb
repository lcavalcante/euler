=begin
2520 is the smallest number that can be divided by each of the numbers
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible
by all of the numbers from 1 to 20?
=end

numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
primes = [2,3,5,7,11,13,17,19]
factors = []

p = primes.shift

loop do
    divisible = false

    (0..19).each do |n|
        if numbers[n] % p == 0 then
            divisible = true
            numbers[n] /= p
        end
    end

    if !divisible then
        break if primes.empty?
        p = primes.shift
    else
        factors << p
    end

end

num = 1
factors.each { |k| num *= k}
puts num
