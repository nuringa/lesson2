abc = ('а'..'я').to_a.insert(6, 'ё')
abc_numbered = abc.zip(1..33).to_h

vowels = %w(а е ё и о у ы э ю я)

vowels_numbered = abc_numbered.select do |letter, _|
  letter if vowels.include?(letter)
end

puts 'Пронумерованные гласные буквы'
vowels_numbered.each do |vowel, number|
  puts "#{vowel} - #{number}"
end
