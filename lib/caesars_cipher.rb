def cipher_calculation(shift_direction, shift_number, input_string)
  converted_string_array = []
  # left shift calculation
  if shift_direction == 'l'
    input_string.split('').each do |char|
      converted_string_array << if char.ord >= 97 && char.ord <= 122
                                  if (char.ord - shift_number) < 97
                                    (char.ord - shift_number + 26).chr
                                  else (char.ord - shift_number).chr
                                  end
                                elsif (char.ord - shift_number) < 65
                                  (char.ord - shift_number + 26).chr
                                else (char.ord - shift_number).chr
                                end
    end
  # right shift calculation
  else input_string.split('').each do |char|
         converted_string_array << if char.ord >= 97 && char.ord <= 122
                                     if (char.ord + shift_number) > 122
                                       (char.ord + shift_number - 26).chr
                                     else (char.ord + shift_number).chr
                                     end
                                   elsif (char.ord + shift_number) > 90
                                     (char.ord + shift_number - 26).chr
                                   else (char.ord + shift_number).chr
                                   end
       end
  end

  converted_string = converted_string_array.join
end

puts 'Enter your phrase to convert'
input_string = gets.chomp
until input_string.chars.all? { |char| ('a'..'z').include? char.downcase }
  puts 'Please enter a phrase'
  input_string = gets.chomp
end

puts 'Enter shift direction (L or R)'
shift_direction = gets.chomp.downcase
until %w[l r].include?(shift_direction)
  puts 'Only L or R please'
  shift_direction = gets.chomp.downcase
end

puts 'Enter shift number 0-25'
shift_number = gets.chomp.to_i
until shift_number > -1 && shift_number < 26
  puts 'Enter shift number 0-25'
  shift_number = gets.chomp.to_i
end

puts "Your converted phrase: #{cipher_calculation(shift_direction, shift_number,input_string)}"







