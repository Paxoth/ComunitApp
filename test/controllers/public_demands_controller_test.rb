require 'test_helper'

class PublicDemandsControllerTest < ActionController::TestCase
  setup do
    @public_demand = public_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_demand" do
    assert_difference('PublicDemand.count') do
      post :create, public_demand: { demand_id: @public_demand.demand_id, user_id: @public_demand.user_id }
    end

    assert_redirected_to public_demand_path(assigns(:public_demand))
  end

  test "should show public_demand" do
    get :show, id: @public_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_demand
    assert_response :success
  end

  test "should update public_demand" do
    patch :update, id: @public_demand, public_demand: { demand_id: @public_demand.demand_id, user_id: @public_demand.user_id }
    assert_redirected_to public_demand_path(assigns(:public_demand))
  end

  test "should destroy public_demand" do
    assert_difference('PublicDemand.count', -1) do
      delete :destroy, id: @public_demand
    end

    assert_redirected_to public_demands_path
  end
end
