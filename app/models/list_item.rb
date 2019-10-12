class ListItem < ApplicationRecord
  belongs_to :list
  belongs_to :item

  def item_attributes=(attrs)
    self.item = Item.find_or_create_by(attrs)
  end
end
