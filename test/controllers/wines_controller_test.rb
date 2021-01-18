require 'test_helper'

class WinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine = wines(:one)
  end

  test "should get index" do
    get wines_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_url
    assert_response :success
  end

  test "should create wine" do
    assert_difference('Wine.count') do
      post wines_url, params: { wine: { abv: @wine.abv, app_ii: @wine.app_ii, appellation: @wine.appellation, blend: @wine.blend, blend_grapes: @wine.blend_grapes, btl_size: @wine.btl_size, btls_case: @wine.btls_case, classification: @wine.classification, cost_case: @wine.cost_case, country: @wine.country, cuvee: @wine.cuvee, grape_variety: @wine.grape_variety, other: @wine.other, producer: @wine.producer, region: @wine.region, sku: @wine.sku, style: @wine.style, supplier: @wine.supplier, vintage: @wine.vintage } }
    end

    assert_redirected_to wine_url(Wine.last)
  end

  test "should show wine" do
    get wine_url(@wine)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_url(@wine)
    assert_response :success
  end

  test "should update wine" do
    patch wine_url(@wine), params: { wine: { abv: @wine.abv, app_ii: @wine.app_ii, appellation: @wine.appellation, blend: @wine.blend, blend_grapes: @wine.blend_grapes, btl_size: @wine.btl_size, btls_case: @wine.btls_case, classification: @wine.classification, cost_case: @wine.cost_case, country: @wine.country, cuvee: @wine.cuvee, grape_variety: @wine.grape_variety, other: @wine.other, producer: @wine.producer, region: @wine.region, sku: @wine.sku, style: @wine.style, supplier: @wine.supplier, vintage: @wine.vintage } }
    assert_redirected_to wine_url(@wine)
  end

  test "should destroy wine" do
    assert_difference('Wine.count', -1) do
      delete wine_url(@wine)
    end

    assert_redirected_to wines_url
  end
end
