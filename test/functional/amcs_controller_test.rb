require 'test_helper'

class AmcsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:amcs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_amc
    assert_difference('Amc.count') do
      post :create, :amc => { }
    end

    assert_redirected_to amc_path(assigns(:amc))
  end

  def test_should_show_amc
    get :show, :id => amcs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => amcs(:one).id
    assert_response :success
  end

  def test_should_update_amc
    put :update, :id => amcs(:one).id, :amc => { }
    assert_redirected_to amc_path(assigns(:amc))
  end

  def test_should_destroy_amc
    assert_difference('Amc.count', -1) do
      delete :destroy, :id => amcs(:one).id
    end

    assert_redirected_to amcs_path
  end
end
