require 'test_helper'

class FaixasControllerTest < ActionController::TestCase
  setup do
    @faixa = faixas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faixas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faixa" do
    assert_difference('Faixa.count') do
      post :create, faixa: { letra: @faixa.letra, titulo: @faixa.titulo }
    end

    assert_redirected_to faixa_path(assigns(:faixa))
  end

  test "should show faixa" do
    get :show, id: @faixa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faixa
    assert_response :success
  end

  test "should update faixa" do
    put :update, id: @faixa, faixa: { letra: @faixa.letra, titulo: @faixa.titulo }
    assert_redirected_to faixa_path(assigns(:faixa))
  end

  test "should destroy faixa" do
    assert_difference('Faixa.count', -1) do
      delete :destroy, id: @faixa
    end

    assert_redirected_to faixas_path
  end
end
