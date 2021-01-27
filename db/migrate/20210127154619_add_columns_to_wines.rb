class AddColumnsToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :par_level, :integer
    add_column :wines, :default, :integer
    add_column :wines, :default_unit_type, :string
    add_column :wines, :status, :boolean
  end
end
