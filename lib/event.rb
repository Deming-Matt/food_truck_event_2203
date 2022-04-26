class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    trucks_selling_item = []
    @food_trucks.each do |truck|
       if truck.inventory.include?(item)
         trucks_selling_item << truck
       end
    end
    trucks_selling_item
  end

  def sorted_item_list
    orig_item_list = []
    @food_trucks.each do |truck|
      truck.inventory.each do |item, quantity|
        orig_item_list << item
      end
    end
    orig_item_list.uniq!.flatten!
    orig_item_list.sort_by(&:name)
    binding.pry

    # unique_items = []
    # orig_item_list.each do |item|
    #   unique_items << item.name
    # end
    # unique_items.uniq!.sort
  end

end
