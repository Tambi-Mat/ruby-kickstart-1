# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(*n)
    key_odd = Array.new
    value_even = Array.new

    (n).map do |x|
        if x % 2 == 0
            value_even << x
        else
            key_odd << x
        end
    end
    # create hash key from each number in array key_odd with an empty array as a value
    hash = Hash.new
    key_odd.each { |x| hash[x] = [] }

    # iterate over the hash with key as an odd number
    # and value as an empty array and add all numbers up to the key (odd number)
    # that are even numbers
    hash.each do |key, value|
        for n in (1..key)
            if n.even?
                value << n
            end
        end
    end
end
