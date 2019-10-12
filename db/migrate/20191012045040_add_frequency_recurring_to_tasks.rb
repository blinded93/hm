class AddFrequencyRecurringToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :frequency, :string
    add_column :tasks, :recurring, :boolean, default: false
  end
end
