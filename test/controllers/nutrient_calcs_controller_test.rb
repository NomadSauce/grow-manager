require 'test_helper'

class NutrientCalcsControllerTest < ActionController::TestCase
  setup do
    @nutrient_calc = nutrient_calcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutrient_calcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutrient_calc" do
    assert_difference('NutrientCalc.count') do
      post :create, nutrient_calc: { aerstone: @nutrient_calc.aerstone, flowertime: @nutrient_calc.flowertime, nutrient_id: @nutrient_calc.nutrient_id, outputunits: @nutrient_calc.outputunits, product: @nutrient_calc.product, rezsize: @nutrient_calc.rezsize, rezunits: @nutrient_calc.rezunits, vegtime: @nutrient_calc.vegtime }
    end

    assert_redirected_to nutrient_calc_path(assigns(:nutrient_calc))
  end

  test "should show nutrient_calc" do
    get :show, id: @nutrient_calc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutrient_calc
    assert_response :success
  end

  test "should update nutrient_calc" do
    patch :update, id: @nutrient_calc, nutrient_calc: { aerstone: @nutrient_calc.aerstone, flowertime: @nutrient_calc.flowertime, nutrient_id: @nutrient_calc.nutrient_id, outputunits: @nutrient_calc.outputunits, product: @nutrient_calc.product, rezsize: @nutrient_calc.rezsize, rezunits: @nutrient_calc.rezunits, vegtime: @nutrient_calc.vegtime }
    assert_redirected_to nutrient_calc_path(assigns(:nutrient_calc))
  end

  test "should destroy nutrient_calc" do
    assert_difference('NutrientCalc.count', -1) do
      delete :destroy, id: @nutrient_calc
    end

    assert_redirected_to nutrient_calcs_path
  end
end
