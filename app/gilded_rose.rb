require_relative 'items'
require_relative 'methods'

# frozen_string_literal: true

item1 = Items.new("Aged Brie", 5, 49)
item2 = Items.new("Toy", 3, 30)

items = Methods.new(item1)

def update_quality(items)

  if items.item.quality == 50
    items.item.quality = items.item.quality
  elsif items.item.name == "Aged Brie" #Increases as it gets older
    (items.item.sell_in == 0) ? items.doubleQ : items.incrementQ
  elsif (items.item.name == "Backstage passes to a TAFKAL80ETC concert") #Increases as it gets older
    if items.item.sell_in == 0
      items.item.quality = 0
    elsif items.item.sell_in <= 5
      items.fiveOrLess
    else 
      items.tenOrLess
    end
  elsif items.item.name == "Sulfuras" #Its values always stay the same
    items.item.quality = 80
    items.item.sell_in = items.item.sell_in
  elsif items.item.name =="Conjured"
    items.decrementQ - 1
  elsif items.limit == true && items.item.quality >= 1
    items.decrementQ
  end
  puts "\t#{items.item.to_s()}"
end

def print_items(days, items)
  (0..days).each do |day|
      puts "Items in day #{day}"
      update_quality(items)
      puts ""
      if items.item.sell_in != 0
        items.item.sell_in -= 1
      else items.item.sell_in = items.item.sell_in
      end
  end
end

print_items(20, items)