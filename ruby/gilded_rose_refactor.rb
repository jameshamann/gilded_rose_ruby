class GildedRoseRefactor

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each {|item| item_checker(item)}
  end

  private

  def item_checker(item)
    case item.name
    when "Aged Brie"
      update_brie(item)
    when "Backstage passes to a TAFKAL80ETC concert"
      update_backstage(item)
    when "Sulfuras, Hand of Ragnaros"
      update_sulfuras(item)
    else
      update_standard(item)
    end
  end

  def update_brie(item)
    item.quality < 50 ? item.quality += 1 : item.quality
    decrease_sell_in(item)
  end

  def update_backstage(item)
    

  end

  def update_sulfuras(item)
  end

  def update_standard(item)
    if item.sell_in > 0
      item.quality -= 1
    else
      item.quality -= 2
    end
    decrease_sell_in(item)
    reset_to_zero(item)
  end

  def reset_to_zero(item)
    if item.quality < 0
      item.quality = 0
    end
  end

  def decrease_sell_in(item)
    item.sell_in -= 1
  end



end
