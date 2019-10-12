class Household < ApplicationRecord
  belongs_to :user

  has_many :bills, dependent: :destroy
  has_many :bills, dependent: :destroy
  has_many :lists
  has_many :tasks
  
  serialize :members, Array
  
  validates :name, :city, :state, :zip_code, presence: true
  validates :address1, presence: true, uniqueness: true
end
