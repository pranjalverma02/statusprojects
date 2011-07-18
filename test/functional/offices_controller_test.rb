require 'test_helper'

class OfficesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:offices)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_office
    assert_difference('Office.count') do
      post :create, :office => { }
    end

    assert_redirected_to office_path(assigns(:office))
  end

  def test_should_show_office
    get :show, :id => offices(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => offices(:one).id
    assert_response :success
  end

  def test_should_update_office
    put :update, :id => offices(:one).id, :office => { }
    assert_redirected_to office_path(assigns(:office))
  end

  def test_should_destroy_office
    assert_difference('Office.count', -1) do
      delete :destroy, :id => offices(:one).id
    end

    assert_redirected_to offices_path
  end
end
