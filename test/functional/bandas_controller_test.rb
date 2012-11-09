require 'test_helper'

class BandasControllerTest < ActionController::TestCase
  setup do
    @banda = bandas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bandas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create banda" do
    assert_difference('Banda.count') do
      post :create, banda: { bio: @banda.bio, fundada_em: @banda.fundada_em, genero: @banda.genero, name: @banda.name }
    end

    assert_redirected_to banda_path(assigns(:banda))
  end

  test "should show banda" do
    get :show, id: @banda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @banda
    assert_response :success
  end

  test "should update banda" do
    put :update, id: @banda, banda: { bio: @banda.bio, fundada_em: @banda.fundada_em, genero: @banda.genero, name: @banda.name }
    assert_redirected_to banda_path(assigns(:banda))
  end

  test "should destroy banda" do
    assert_difference('Banda.count', -1) do
      delete :destroy, id: @banda
    end

    assert_redirected_to bandas_path
  end
end
