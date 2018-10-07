# x = 1
#
# loop do
#   x += 1
#
#   next if (x % 2 ) == 0
#   puts x
#
#   break if x >= 10
# end
#
# # 3
# # 5
# # 7
# # 9
# # 11
#
# y = 1
#
# loop do
#   y += 1
#
#   if (y % 2 ) == 0
#     puts y
#   end
#
#   break if y >= 10
# end
#
# # 2
# # 4
# # 6
# # 8
# # 10
#
# z = 1
#
# loop do
#   z += 1
#
#   next unless (z % 2 ) == 0
#   puts z
#
#   break if z >= 10
# end

# 2
# 4
# 6
# 8
# 10
# numbers_2 = {key1: "one", key2: "two", key3: "three", key4: "four"}
# numbers = ["zero","one","two","three","four"]
# #
# #numbers << "five"
# #numbers.insert(0,"minus1")   <<<<<<<<<<<<<<<<<<<<<<<<<<
# #numbers.delete_at(0)       <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# #puts numbers.slice!(0)     <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
# puts numbers
# puts numbers.inspect
#
# numbers_2.delete(:key1)
# numbers_2[:keys5] = "four"
#
# puts numbers_2

my_hash = {key1: "one", keys2: "two", keys3: ["zero","one","two","three","four"] }

#my_hash[:key_test] = "random stuff"["zero","one","two","three","four"]

p my_hash.inspect

my_hash.delete(:key1)

p my_hash.inspect

# # for num in numbers_2.values
# # # for num in numbers
# #   p num
# #  end
#
# puts numbers_2.values[0]
# puts numbers_2[:key1]
# puts numbers_2.keys[0]
# numbers_2.keys.each do |num|
#   p num[0]
#   #next if num < 9
#   #break
# end
#
# p numbers_2.values[0]
# #
# # numbers_3 = numbers_2
# #
# # p numbers_3.values






# def add_stuff(num1,num2)
#   answer = num1 + num2
#   return answer
# end
#
#
# p add_stuff(2,2)
