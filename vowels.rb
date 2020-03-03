abc = ('а'..'я').to_a.insert(6, 'ё')

vowels = %w(а е ё и о у ы э ю я)
vowels_numbered = {}

abc.select.with_index(1) do |letter, index|
  vowels_numbered[letter] = index if vowels.include?(letter)
end

puts 'Пронумерованные гласные буквы'
vowels_numbered.each do |vowel, number|
  puts "#{vowel} - #{number}"
end
