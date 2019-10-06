class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.string :notes
      t.references :list, null: false, foreign_key: true, index: true
      t.references :item, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
