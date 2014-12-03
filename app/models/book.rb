class Book < ActiveRecord::Base
  validates :title, presence: true


  def price_range
    price > 9 && price < 21
  end

end
