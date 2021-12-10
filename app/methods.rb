require_relative 'items'

# frozen_string_literal: true

class Methods
    attr_accessor :item

    def initialize(item)
        @item = item
    end
    
    def tenOrLess
        if item.quality < 50
            item.quality +=2
        end
    end
    
    def fiveOrLess
        if item.sell_in <= 5
            item.quality +=3
        end
    end

    def incrementQ
        item.quality += 1
    end
    
    def decrementQ
        item.quality -= 1
    end

    def limit
        if item.quality <= 50
            return true
        else
            false
        end
    end

    def doubleQ
        item.quality += 2
    end

    def conjured
        item.quality -= 2
    end
end