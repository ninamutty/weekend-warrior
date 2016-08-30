#MY INITIAL CODE TO PASS THE ASSERTIONS - ADDED A NESTED LOOP FOR EACH ADDITIONAL TEST!
# def leap_year?(year)
#     if year % 4 == 0
#         if year % 100 == 0
#             if year % 400 == 0
#                 return true
#             else
#                 return false
#             end
#         else
#             return true
#         end
#     else
#         return false
#     end
# end


#REFACTORED ABOVE CODE TO MAKE IT A LITTLE CLEANER
# def leap_year?(year)
#     if year % 4 == 0 && year % 100 == 0 && year % 400 == 0
#         return true
#     elsif year % 4 == 0 && year % 100 == 0
#         return false
#     elsif year % 4 == 0
#         return true
#     else
#         return false
#     end
# end

#REFACTORED AGAIN
# def leap_year?(year)
#     if year % 400 == 0
#         return true
#     elsif year % 100 == 0
#         return false
#     elsif year % 4 == 0
#         return true
#     else
#         return false
#     end
# end


##SHORTEST/MOST COMPACT SOLUTION - show you can work the boolean logic
def leap_year?(year)
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        return true
    end
end
