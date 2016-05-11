require 'test_helper'

class PlantCyclesControllerTest < ActionController::TestCase
  setup do
    @plant_cycle = plant_cycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plant_cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plant_cycle" do
    assert_difference('PlantCycle.count') do
      post :create, plant_cycle: { frequency: @plant_cycle.frequency, interval: @plant_cycle.interval, plant_id: @plant_cycle.plant_id, title: @plant_cycle.title }
    end

    assert_redirected_to plant_cycle_path(assigns(:plant_cycle))
  end

  test "should show plant_cycle" do
    get :show, id: @plant_cycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plant_cycle
    assert_response :success
  end

  test "should update plant_cycle" do
    patch :update, id: @plant_cycle, plant_cycle: { frequency: @plant_cycle.frequency, interval: @plant_cycle.interval, plant_id: @plant_cycle.plant_id, title: @plant_cycle.title }
    assert_redirected_to plant_cycle_path(assigns(:plant_cycle))
  end

  test "should destroy plant_cycle" do
    assert_difference('PlantCycle.count', -1) do
      delete :destroy, id: @plant_cycle
    end

    assert_redirected_to plant_cycles_path
  end
end
