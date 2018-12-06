# 水族館
# 大人(18歳以上) 1500円
# 子供(6~18歳未満) 1000円
# 子供(6歳未満) 無料

# Menuクラスを作る
class Menu
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
    self.name = name
    self.price = price
  end

  def info
    return "#{self.name} #{self.price}円"
  end

  def get_adult_total(a_count)
    adult_total_price = self.price * a_count
    return adult_total_price
  end

  def get_child_total(c_count)
    child_total_price = self.price * c_count
    return child_total_price
  end

  def get_baby_total(b_count)
    baby_total_price = self.price * b_count
    return baby_total_price
  end
end


menu1 = Menu.new(name: "大人", price: 1500)
menu2 = Menu.new(name: "子供", price: 1000)
menu3 = Menu.new(name: "幼児", price: 500)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  puts "#{menu.info}"
end

puts "大人は何名ですか？"
a_count = gets.chomp.to_i

puts "子供は何名ですか？"
c1_count = gets.chomp.to_i

puts "幼児は何名ですか？"
c2_count = gets.chomp.to_i

total_count = a_count + c_count + b_count
total_price = menu1.get_adult_total(a_count) + menu2.get_child_total(c_count) + menu3.get_baby_total(b_count)

puts "#{total_count}名で#{total_price}円です"
