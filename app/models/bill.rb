class Bill < ApplicationRecord
  belongs_to :household

  default_scope { order(due_date: :asc) }
  scope :paid, -> { where(paid: true) }
  scope :unpaid, -> { where.not(paid: true) }
  scope :over_due, -> { unpaid.where('due_date < ?', Date.today) }
  scope :soon, -> { where(due_date: Date.today..Date.today + 3.days) }
  scope :this_month, -> {
    where(due_date: Date.today.beginning_of_month..Date.today.end_of_month)
  }
  scope :next_month, -> {
        where(due_date: Date.today.next_month.beginning_of_month..Date.today.next_month.end_of_month)
  }

end
