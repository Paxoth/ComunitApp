require 'test_helper'

class LicitationsControllerTest < ActionController::TestCase
  setup do
    @licitation = licitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:licitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create licitation" do
    assert_difference('Licitation.count') do
      post :create, licitation: { demand_id: @licitation.demand_id, description: @licitation.description, end_time: @licitation.end_time, mount: @licitation.mount, start_time: @licitation.start_time, user_id: @licitation.user_id }
    end

    assert_redirected_to licitation_path(assigns(:licitation))
  end

  test "should show licitation" do
    get :show, id: @licitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @licitation
    assert_response :success
  end

  test "should update licitation" do
    patch :update, id: @licitation, licitation: { demand_id: @licitation.demand_id, description: @licitation.description, end_time: @licitation.end_time, mount: @licitation.mount, start_time: @licitation.start_time, user_id: @licitation.user_id }
    assert_redirected_to licitation_path(assigns(:licitation))
  end

  test "should destroy licitation" do
    assert_difference('Licitation.count', -1) do
      delete :destroy, id: @licitation
    end

    assert_redirected_to licitations_path
  end
end
