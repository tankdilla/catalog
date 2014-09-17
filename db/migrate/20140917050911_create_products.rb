class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :company_id
      t.integer :quality_rating
      t.integer :item_type_id

      t.timestamps
    end
  end
end
