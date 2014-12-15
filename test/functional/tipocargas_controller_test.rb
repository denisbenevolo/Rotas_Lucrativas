require 'test_helper'

class TipocargasControllerTest < ActionController::TestCase
  setup do
    @tipocarga = tipocargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipocargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipocarga" do
    assert_difference('Tipocarga.count') do
      post :create, :tipocarga => { :tipo => @tipocarga.tipo }
    end

    assert_redirected_to tipocarga_path(assigns(:tipocarga))
  end

  test "should show tipocarga" do
    get :show, :id => @tipocarga
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipocarga
    assert_response :success
  end

  test "should update tipocarga" do
    put :update, :id => @tipocarga, :tipocarga => { :tipo => @tipocarga.tipo }
    assert_redirected_to tipocarga_path(assigns(:tipocarga))
  end

  test "should destroy tipocarga" do
    assert_difference('Tipocarga.count', -1) do
      delete :destroy, :id => @tipocarga
    end

    assert_redirected_to tipocargas_path
  end
end
