class FoodTruck
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

  def check_stock(item)
    @inventory[item]
  end

  def potential_revenue
    item_revenue_array = []
    @inventory.each do |item, quantity|
      item_revenue_array << quantity * item.price.gsub(/[$]/, "").to_f
    end
    item_revenue_array.sum.round(2)
  end

end
