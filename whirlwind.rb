=begin
favorite_food = []

5.times do
  puts "Enter your favorite food"
  food = gets.chomp
  favorite_food << food
end

i = 0
j = 1
while i < favorite_food.length
  puts "#{j}.  #{favorite_food[i]}"
  i += 1
  j += 1
end


count = 0

while count <= 10
  puts count
  count += 1
end
=end

sam_cooks = ["Jumbalaya", "Chicken Parmesean", "Buffalo Wings", "Green Bean Casserole", "Lobster Bisque"]

sally_speaks = ["French", "German", "English", "Spanish", "Yiddish"]

i = 0
while i < sam_cooks.length > 10 && i < sally_speaks > 5
  puts "They should date"
else
  puts "They shouldn't date"
  i += 1
end
