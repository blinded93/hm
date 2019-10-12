class List < ApplicationRecord
  belongs_to :household

  has_many :list_items, dependent: :destroy
  has_many :items, through: :list_items

  def size
    items.count
  end
end
