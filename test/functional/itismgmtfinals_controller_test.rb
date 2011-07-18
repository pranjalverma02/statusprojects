require 'test_helper'

class ItismgmtfinalsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:itismgmtfinals)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_itismgmtfinal
    assert_difference('Itismgmtfinal.count') do
      post :create, :itismgmtfinal => { }
    end

    assert_redirected_to itismgmtfinal_path(assigns(:itismgmtfinal))
  end

  def test_should_show_itismgmtfinal
    get :show, :id => itismgmtfinals(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => itismgmtfinals(:one).id
    assert_response :success
  end

  def test_should_update_itismgmtfinal
    put :update, :id => itismgmtfinals(:one).id, :itismgmtfinal => { }
    assert_redirected_to itismgmtfinal_path(assigns(:itismgmtfinal))
  end

  def test_should_destroy_itismgmtfinal
    assert_difference('Itismgmtfinal.count', -1) do
      delete :destroy, :id => itismgmtfinals(:one).id
    end

    assert_redirected_to itismgmtfinals_path
  end
end
