puts 'Сумма покупок'
puts

goods = {}

loop do
  puts 'Введите название товара или "стоп" чтобы выйти'
  name = gets.chomp
  break if name == 'стоп'

  puts 'Введите цену товара:'
  price = gets.to_f

  puts 'Введите количество товара:'
  quantity = gets.to_f

  goods[name] = {
    price: price,
    quantity: quantity,
    total: (price * quantity).round(2)
  }
end

total = 0
goods.each do |name, details|
  total += details[:total]
  puts "#{name} (#{details[:quantity]} шт. * #{details[:price]} руб.) " \
  "- #{details[:total]}руб."
end

puts "Итого к оплате: #{total}руб."
