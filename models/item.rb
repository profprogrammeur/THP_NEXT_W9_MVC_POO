class Item
  attr_reader :id, :name 

  def self.all
    all_items = CSV.parse(File.read("db/items.csv"),headers: true)
    return all_items
  end

end




    # all_items = []
      # CSV.foreach("db/items.csv") do |row|
      #   item_temp = Item.new(row[0], row[1])
      #   all_items << item_temp
      # end


        #   def initialize(id, name)
  #   @id = id
  #   @name = name
  # end
  
  # def initialize(item_id)
  #   @id= item_id 
  # end