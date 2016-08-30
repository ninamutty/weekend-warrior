
class Xmas
    attr_reader :gifts_array, :numbers

    @@gifts_array = ["and a partridge in a pear tree", "two turtle doves", "three french hens", "four calling birds", "FIVE GOLDEN RINGS", "six geese-a-laying", "seven swans-a-swimming", "eight maids-a-milking", "nine ladies dancing", "ten lords-a-leaping", "eleven pipers piping", "twelve drummers drumming"]

    @@day_one = ["a partridge in a pear tree"]

    @@numbers = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]

    def self.gifts(day)
        if day == 0
            return @@day_one
        elsif day > 0 && day <= 11
            i = day
            gifts_for_verse = []
            @@gifts_array[0..i].each do
                gifts_for_verse << @@gifts_array[i]
                i -= 1
            end
            return gifts_for_verse
        elseclea
            return "That's not one the days of Christmas!"
        end
    end

    def self.verse(number)
        whole_verse = "On the #{@@numbers[number]} day of Christmas my true love gave to me\n#{gifts(number).join("\n")}"
        return whole_verse
    end

    def self.sing
        whole_song = []
        (0..11).each do |i|
            whole_song << verse(i)
        end
        return whole_song.join("\n\n")
    end

end

# # print Xmas.gifts(1)
# puts
# print Xmas.sing
# #print Xmas.verse(2)
