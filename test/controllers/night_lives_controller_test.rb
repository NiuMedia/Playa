require 'test_helper'

class NightLivesControllerTest < ActionController::TestCase
  setup do
    @night_life = night_lives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:night_lives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create night_life" do
    assert_difference('NightLife.count') do
      post :create, night_life: { contactp: @night_life.contactp, contactt: @night_life.contactt, mail: @night_life.mail, pavg: @night_life.pavg, promo: @night_life.promo, tel: @night_life.tel, type: @night_life.type }
    end

    assert_redirected_to night_life_path(assigns(:night_life))
  end

  test "should show night_life" do
    get :show, id: @night_life
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @night_life
    assert_response :success
  end

  test "should update night_life" do
    patch :update, id: @night_life, night_life: { contactp: @night_life.contactp, contactt: @night_life.contactt, mail: @night_life.mail, pavg: @night_life.pavg, promo: @night_life.promo, tel: @night_life.tel, type: @night_life.type }
    assert_redirected_to night_life_path(assigns(:night_life))
  end

  test "should destroy night_life" do
    assert_difference('NightLife.count', -1) do
      delete :destroy, id: @night_life
    end

    assert_redirected_to night_lives_path
  end
end
