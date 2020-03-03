puts 'Порядковый номер даты'

puts 'Введите год:'
year = gets.to_i

puts 'Введите номер текущего месяца:'
month = gets.to_i

puts 'Введите число:'
current_day = gets.to_i

month_days = {
  January: 31, February: 28, March: 31, April: 30, May: 31, June: 30, July: 31,
    August: 31, September: 30, October: 31, November: 30, December: 31
}

if ((year % 4 == 0) && !(year % 100 == 0 )) || (year % 400 == 0)
  month_days[:February] = 29
end

day_of_the_year = month_days.values.take(month - 1).push(current_day).sum

puts "Сегодня #{day_of_the_year}-й день года."
