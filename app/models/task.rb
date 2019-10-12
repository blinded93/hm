class Task < ApplicationRecord
  belongs_to :household

  validates :name, :due_date, presence: true

  default_scope { order(due_date: :desc) }
  scope :over_due, -> { where('due_date < ?', Date.today) }
  scope :completed, -> { where(completed?: true) }

  def not_in_past
    if !due_date.blank? && due_date < Date.today
      errors.add(:due_date, "can't be in the past.")
    end
  end
end
