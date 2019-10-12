class Item < ApplicationRecord
  validates :name, presence: true

  has_many :list_items
  has_many :lists, through: :list_items
end
