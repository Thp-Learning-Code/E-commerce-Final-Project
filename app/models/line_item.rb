# frozen_string_literal: true

class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :picture

  def total
   picture.price * quantity
 end

end
