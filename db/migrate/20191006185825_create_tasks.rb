class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :household, null: false, foreign_key: true, index: true
      t.date :due_date
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
