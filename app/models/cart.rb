# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_picture(picture)
    item = line_items.find_by(picture_id: picture)

    if item
      item.quantity += 1
    else
      item = line_items.new(picture_id: picture)
    end

    item
  end
end
