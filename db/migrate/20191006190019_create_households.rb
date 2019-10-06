class CreateHouseholds < ActiveRecord::Migration[6.0]
  def change
    create_table :households do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :members
      t.references :user, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
