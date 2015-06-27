def count_letters
  puts "What did you say?"
  sentence = gets.chomp.downcase

  list = sentence.split(" ")

  letters =Hash.new (0)
  list.each do |word|
    word.split('').each { |count| letters[count] += 1 }
  end
  letters
end

# Why the long face(error)? 
# 1. This should return count of each letter in the list

puts count_letters


# 2. What are the improvements you can do to above code?