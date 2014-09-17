class CreateProductEntries < ActiveRecord::Migration
  def change
    create_table :product_entries do |t|
      t.integer :product_id
      t.decimal :price
      t.string :source
      t.string :source_url

      t.timestamps
    end
  end
end
