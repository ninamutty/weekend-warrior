# require_relative 'hamming_test'

class Hamming
    def self.compute(string1, string2)
        raise ArgumentError if string1.length != string2.length
        differences = 0
        (string1.length).times do |i|
            differences += 1 if string1[i] != string2[i]
        end
        return differences
    end
end
