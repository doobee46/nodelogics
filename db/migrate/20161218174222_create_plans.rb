class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :price
      t.integer :ssd
      t.integer :memory
      t.integer :processor
      t.integer :transfer
      t.boolean :popular

      t.timestamps null: false
    end
  end
end
