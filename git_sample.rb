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

  def get_child1_total(c1_count)
    child1_total_price = self.price * c1_count
    return child1_total_price
  end

  def get_child2_total(c2_count)
    child2_total_price = self.price * c2_count
    return child2_total_price
  end
end


menu1 = Menu.new(name: "大人", price: 1500)
menu2 = Menu.new(name: "子供(6~18歳未満)", price: 1000)
menu3 = Menu.new(name: "子供(6歳未満)", price: 0)

menus = [menu1, menu2, menu3]

menus.each do |menu|
  puts "#{menu.info}"
end

puts "大人は何名ですか？"
a_count = gets.chomp.to_i

puts "子供(6~18歳未満)は何名ですか？"
c1_count = gets.chomp.to_i

puts "子供(6歳未満)は何名ですか？"
c2_count = gets.chomp.to_i

total_count = a_count + c1_count + c2_count
total_price = menu1.get_adult_total(a_count) + menu2.get_child1_total(c1_count) + menu3.get_child2_total(c2_count)

puts "#{total_count}名で#{total_price}円です"
