require 'test_helper'

class DatalogsControllerTest < ActionController::TestCase
  setup do
    @datalog = datalogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datalogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datalog" do
    assert_difference('Datalog.count') do
      post :create, datalog: { ambcur: @datalog.ambcur, ambmax: @datalog.ambmax, ambmin: @datalog.ambmin, folcur: @datalog.folcur, folmax: @datalog.folmax, folmin: @datalog.folmin, h202: @datalog.h202, heatmat: @datalog.heatmat, ph: @datalog.ph, tds: @datalog.tds, tray_id: @datalog.tray_id }
    end

    assert_redirected_to datalog_path(assigns(:datalog))
  end

  test "should show datalog" do
    get :show, id: @datalog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datalog
    assert_response :success
  end

  test "should update datalog" do
    patch :update, id: @datalog, datalog: { ambcur: @datalog.ambcur, ambmax: @datalog.ambmax, ambmin: @datalog.ambmin, folcur: @datalog.folcur, folmax: @datalog.folmax, folmin: @datalog.folmin, h202: @datalog.h202, heatmat: @datalog.heatmat, ph: @datalog.ph, tds: @datalog.tds, tray_id: @datalog.tray_id }
    assert_redirected_to datalog_path(assigns(:datalog))
  end

  test "should destroy datalog" do
    assert_difference('Datalog.count', -1) do
      delete :destroy, id: @datalog
    end

    assert_redirected_to datalogs_path
  end
end
