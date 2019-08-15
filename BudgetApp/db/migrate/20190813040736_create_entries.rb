class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :location
      t.string :category
      t.float :amount
      t.date :date

      t.timestamps
    end
  end
end
