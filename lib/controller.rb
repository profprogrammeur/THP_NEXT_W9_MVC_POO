require_relative 'view'
require_relative 'item'
class Controller

  def initialize
    Item.new(1)
  end

  def create_item(id)
    Item.new(id)
  end
end

