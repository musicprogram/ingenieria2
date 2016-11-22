require 'test_helper'

class TypeSoundsControllerTest < ActionController::TestCase
  setup do
    @type_sound = type_sounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_sounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_sound" do
    assert_difference('TypeSound.count') do
      post :create, type_sound: { nombre: @type_sound.nombre }
    end

    assert_redirected_to type_sound_path(assigns(:type_sound))
  end

  test "should show type_sound" do
    get :show, id: @type_sound
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_sound
    assert_response :success
  end

  test "should update type_sound" do
    patch :update, id: @type_sound, type_sound: { nombre: @type_sound.nombre }
    assert_redirected_to type_sound_path(assigns(:type_sound))
  end

  test "should destroy type_sound" do
    assert_difference('TypeSound.count', -1) do
      delete :destroy, id: @type_sound
    end

    assert_redirected_to type_sounds_path
  end
end
