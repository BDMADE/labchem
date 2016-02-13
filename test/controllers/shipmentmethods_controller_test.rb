require 'test_helper'

class ShipmentmethodsControllerTest < ActionController::TestCase
  setup do
    @shipmentmethod = shipmentmethods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shipmentmethods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shipmentmethod" do
    assert_difference('Shipmentmethod.count') do
      post :create, shipmentmethod: { name: @shipmentmethod.name }
    end

    assert_redirected_to shipmentmethod_path(assigns(:shipmentmethod))
  end

  test "should show shipmentmethod" do
    get :show, id: @shipmentmethod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shipmentmethod
    assert_response :success
  end

  test "should update shipmentmethod" do
    patch :update, id: @shipmentmethod, shipmentmethod: { name: @shipmentmethod.name }
    assert_redirected_to shipmentmethod_path(assigns(:shipmentmethod))
  end

  test "should destroy shipmentmethod" do
    assert_difference('Shipmentmethod.count', -1) do
      delete :destroy, id: @shipmentmethod
    end

    assert_redirected_to shipmentmethods_path
  end
end
