require 'test_helper'

class IssuancesControllerTest < ActionController::TestCase
  setup do
    @issuance = issuances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issuances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issuance" do
    assert_difference('Issuance.count') do
      post :create, issuance: {  }
    end

    assert_redirected_to issuance_path(assigns(:issuance))
  end

  test "should show issuance" do
    get :show, id: @issuance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issuance
    assert_response :success
  end

  test "should update issuance" do
    patch :update, id: @issuance, issuance: {  }
    assert_redirected_to issuance_path(assigns(:issuance))
  end

  test "should destroy issuance" do
    assert_difference('Issuance.count', -1) do
      delete :destroy, id: @issuance
    end

    assert_redirected_to issuances_path
  end
end
