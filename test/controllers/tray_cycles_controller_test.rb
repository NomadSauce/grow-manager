require 'test_helper'

class TrayCyclesControllerTest < ActionController::TestCase
  setup do
    @tray_cycle = tray_cycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tray_cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tray_cycle" do
    assert_difference('TrayCycle.count') do
      post :create, tray_cycle: { title: @tray_cycle.title, tray_id: @tray_cycle.tray_id }
    end

    assert_redirected_to tray_cycle_path(assigns(:tray_cycle))
  end

  test "should show tray_cycle" do
    get :show, id: @tray_cycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tray_cycle
    assert_response :success
  end

  test "should update tray_cycle" do
    patch :update, id: @tray_cycle, tray_cycle: { title: @tray_cycle.title, tray_id: @tray_cycle.tray_id }
    assert_redirected_to tray_cycle_path(assigns(:tray_cycle))
  end

  test "should destroy tray_cycle" do
    assert_difference('TrayCycle.count', -1) do
      delete :destroy, id: @tray_cycle
    end

    assert_redirected_to tray_cycles_path
  end
end
