months_with_days = {
  'Январь' => 31,
  'Февраль' => 28,
  'Март' => 31,
  'Апрель' => 30,
  'Май' => 31,
  'Июнь' => 30,
  'Июль' => 31,
  'Август' => 31,
  'Сентябрь' => 30,
  'Октябрь' => 31,
  'Ноябрь' => 30,
  'Декабрь' => 31
}

months_30_days = months_with_days.select do |month, days|
  month if days == 30
end

puts 'Месяцы, в которых 30 дней:'
puts months_30_days.keys.join(', ')
