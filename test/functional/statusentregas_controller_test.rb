require 'test_helper'

class StatusentregasControllerTest < ActionController::TestCase
  setup do
    @statusentrega = statusentregas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statusentregas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statusentrega" do
    assert_difference('Statusentrega.count') do
      post :create, :statusentrega => { :status => @statusentrega.status }
    end

    assert_redirected_to statusentrega_path(assigns(:statusentrega))
  end

  test "should show statusentrega" do
    get :show, :id => @statusentrega
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @statusentrega
    assert_response :success
  end

  test "should update statusentrega" do
    put :update, :id => @statusentrega, :statusentrega => { :status => @statusentrega.status }
    assert_redirected_to statusentrega_path(assigns(:statusentrega))
  end

  test "should destroy statusentrega" do
    assert_difference('Statusentrega.count', -1) do
      delete :destroy, :id => @statusentrega
    end

    assert_redirected_to statusentregas_path
  end
end
