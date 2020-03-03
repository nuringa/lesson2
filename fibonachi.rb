fibonachi_numbers = [1, 1]
sum_last_numbers = fibonachi_numbers[-1] + fibonachi_numbers[-2]

while sum_last_numbers <= 100 do
  fibonachi_numbers.push(sum_last_numbers)
  sum_last_numbers += fibonachi_numbers[-2]
end

puts 'Числа Фибоначи до 100:'
puts fibonachi_numbers.join(', ')
