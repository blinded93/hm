class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :company
      t.integer :amount
      t.integer :account_number
      t.boolean :recurring?, default: false
      t.string :url
      t.boolean :paid?, default: false
      t.string :category
      t.date :due_date
      t.references :household, null: false, foreign_key: true, index: true
      t.string :nickname
      t.string :frequency

      t.timestamps
    end
  end
end
