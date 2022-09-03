class Cheese < ApplicationRecord
  
  def summary
    "#{name}: $#{price}"
  end

  # why don't we need to do self.name and self.price here

end
