class ListItem < ApplicationRecord
  belongs_to :list
  belongs_to :item

  validates :unique?

  def item_attributes=(attrs)
    self.item = Item.find_or_create_by(attrs)
  end

  def unique?
    if !persisted? && ListItem.find_by(list_id: list_id, item_id: item_id)
      errors.add(:item_id, 'is already on the list.')
    end
  end
end
