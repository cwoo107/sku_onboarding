class Wine < ApplicationRecord
  before_create :set_sku

  def set_sku
    write_attribute(:sku, "#{producer.capitalize}, #{cuvee.capitalize}, #{appellation.capitalize} #{vintage} (#{grape_variety.capitalize})")
    puts sku
  end
end
