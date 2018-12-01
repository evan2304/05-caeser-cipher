def cipher (string, offset)
    #insert lowercase and uppercase alphabet. to_a makes it an array then join
    lowercase_alphabet= ("a".."z").to_a.join
    uppercase_alphabet= ("A".."Z").to_a.join
    #combine lowercase and uppercase alphabet
    all_alphabet = lowercase_alphabet + uppercase_alphabet
    #creates an array of of the characters in all_alphabet
    split_alphabet= all_alphabet.chars
    #offset the alphabet and include mod 26 so it can wrap around. Then join to string
    offset_alphabet = split_alphabet.rotate(offset%26).join
    #tr replaces the first argument with the second argument. 
    puts string.tr(all_alphabet,offset_alphabet)
end

puts "Enter a string:"
user_string = gets.chomp
puts "Enter an offset:"
user_offset = gets.chomp.to_i

cipher(user_string,user_offset)

