puts 'Порядковый номер даты'

puts 'Введите год:'
year = gets.to_i

puts 'Введите номер текущего месяца:'
month = gets.to_i

puts 'Введите число:'
current_day = gets.to_i

month_days = if ((year % 4 == 0) && !(year % 100 == 0 )) || (year % 400 == 0)
               [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
             else
               [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
             end

day_of_the_year = month_days.take(month - 1).inject(current_day) do |day, month_day|
  day + month_day
end

puts "Сегодня #{day_of_the_year}-й день года."
