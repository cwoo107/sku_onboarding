class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :sku
      t.string :supplier
      t.string :producer
      t.string :cuvee
      t.string :grape_variety
      t.string :style
      t.string :vintage
      t.integer :btl_size
      t.integer :btls_case
      t.float :cost_case
      t.string :appellation
      t.string :app_ii
      t.string :region
      t.string :country
      t.string :classification
      t.float :abv
      t.string :other
      t.boolean :blend
      t.json :blend_grapes

      t.timestamps
    end
  end
end
