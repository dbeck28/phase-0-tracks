class TodoList

  def initialize(item_arr)
    @item_arr = item_arr
  end

  def get_items
    @item_arr
  end

  def add_item(item)
    @item_arr << item
  end

  def delete_item(item)
    @item_arr.delete(item)
  end

  def get_item(index)
    p @item_arr[index]
  end

end