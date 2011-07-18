require 'test_helper'

class ItismgmtsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:itismgmts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_itismgmt
    assert_difference('Itismgmt.count') do
      post :create, :itismgmt => { }
    end

    assert_redirected_to itismgmt_path(assigns(:itismgmt))
  end

  def test_should_show_itismgmt
    get :show, :id => itismgmts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => itismgmts(:one).id
    assert_response :success
  end

  def test_should_update_itismgmt
    put :update, :id => itismgmts(:one).id, :itismgmt => { }
    assert_redirected_to itismgmt_path(assigns(:itismgmt))
  end

  def test_should_destroy_itismgmt
    assert_difference('Itismgmt.count', -1) do
      delete :destroy, :id => itismgmts(:one).id
    end

    assert_redirected_to itismgmts_path
  end
end
