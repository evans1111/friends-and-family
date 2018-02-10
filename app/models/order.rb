class Order < ApplicationRecord
  has_many :products
  belongs_to :cart

  def subtotal
    #products
  end
end
