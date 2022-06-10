require './views/view'
require './models/item'

class Controller

  def index_items
    items = Item.all
    View.all(items)
  end

end








  # def initialize
  #   Item.new(1)
  # end

  # def create_item(id)
  #   Item.new(id)
  # end

