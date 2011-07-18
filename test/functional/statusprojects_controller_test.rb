require 'test_helper'

class StatusprojectsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:statusprojects)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_statusproject
    assert_difference('Statusproject.count') do
      post :create, :statusproject => { }
    end

    assert_redirected_to statusproject_path(assigns(:statusproject))
  end

  def test_should_show_statusproject
    get :show, :id => statusprojects(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => statusprojects(:one).id
    assert_response :success
  end

  def test_should_update_statusproject
    put :update, :id => statusprojects(:one).id, :statusproject => { }
    assert_redirected_to statusproject_path(assigns(:statusproject))
  end

  def test_should_destroy_statusproject
    assert_difference('Statusproject.count', -1) do
      delete :destroy, :id => statusprojects(:one).id
    end

    assert_redirected_to statusprojects_path
  end
end
