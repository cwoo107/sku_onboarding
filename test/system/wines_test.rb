require "application_system_test_case"

class WinesTest < ApplicationSystemTestCase
  setup do
    @wine = wines(:one)
  end

  test "visiting the index" do
    visit wines_url
    assert_selector "h1", text: "Wines"
  end

  test "creating a Wine" do
    visit wines_url
    click_on "New Wine"

    fill_in "Abv", with: @wine.abv
    fill_in "App ii", with: @wine.app_ii
    fill_in "Appellation", with: @wine.appellation
    check "Blend" if @wine.blend
    fill_in "Blend grapes", with: @wine.blend_grapes
    fill_in "Btl size", with: @wine.btl_size
    fill_in "Btls case", with: @wine.btls_case
    fill_in "Classification", with: @wine.classification
    fill_in "Cost case", with: @wine.cost_case
    fill_in "Country", with: @wine.country
    fill_in "Cuvee", with: @wine.cuvee
    fill_in "Grape variety", with: @wine.grape_variety
    fill_in "Other", with: @wine.other
    fill_in "Producer", with: @wine.producer
    fill_in "Region", with: @wine.region
    fill_in "Sku", with: @wine.sku
    fill_in "Style", with: @wine.style
    fill_in "Supplier", with: @wine.supplier
    fill_in "Vintage", with: @wine.vintage
    click_on "Create Wine"

    assert_text "Wine was successfully created"
    click_on "Back"
  end

  test "updating a Wine" do
    visit wines_url
    click_on "Edit", match: :first

    fill_in "Abv", with: @wine.abv
    fill_in "App ii", with: @wine.app_ii
    fill_in "Appellation", with: @wine.appellation
    check "Blend" if @wine.blend
    fill_in "Blend grapes", with: @wine.blend_grapes
    fill_in "Btl size", with: @wine.btl_size
    fill_in "Btls case", with: @wine.btls_case
    fill_in "Classification", with: @wine.classification
    fill_in "Cost case", with: @wine.cost_case
    fill_in "Country", with: @wine.country
    fill_in "Cuvee", with: @wine.cuvee
    fill_in "Grape variety", with: @wine.grape_variety
    fill_in "Other", with: @wine.other
    fill_in "Producer", with: @wine.producer
    fill_in "Region", with: @wine.region
    fill_in "Sku", with: @wine.sku
    fill_in "Style", with: @wine.style
    fill_in "Supplier", with: @wine.supplier
    fill_in "Vintage", with: @wine.vintage
    click_on "Update Wine"

    assert_text "Wine was successfully updated"
    click_on "Back"
  end

  test "destroying a Wine" do
    visit wines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wine was successfully destroyed"
  end
end
