class Item
  # secu 
  attr_reader :id, :name 

  
  def initialize(item_id)
    @id= item_id 
  end

  def display
    puts 'lolipop'
  end

end