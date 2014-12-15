require 'test_helper'

class RotaControllerTest < ActionController::TestCase
  setup do
    @rotum = rota(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rota)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rotum" do
    assert_difference('Rotum.count') do
      post :create, rotum: { data: @rotum.data, destino: @rotum.destino, gmaps: @rotum.gmaps, horario: @rotum.horario, idCarro: @rotum.idCarro, idUser: @rotum.idUser, latitude: @rotum.latitude, longitude: @rotum.longitude, origem: @rotum.origem }
    end

    assert_redirected_to rotum_path(assigns(:rotum))
  end

  test "should show rotum" do
    get :show, id: @rotum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rotum
    assert_response :success
  end

  test "should update rotum" do
    put :update, id: @rotum, rotum: { data: @rotum.data, destino: @rotum.destino, gmaps: @rotum.gmaps, horario: @rotum.horario, idCarro: @rotum.idCarro, idUser: @rotum.idUser, latitude: @rotum.latitude, longitude: @rotum.longitude, origem: @rotum.origem }
    assert_redirected_to rotum_path(assigns(:rotum))
  end

  test "should destroy rotum" do
    assert_difference('Rotum.count', -1) do
      delete :destroy, id: @rotum
    end

    assert_redirected_to rota_path
  end
end
