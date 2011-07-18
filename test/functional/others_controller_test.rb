require 'test_helper'

class OthersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:others)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_other
    assert_difference('Other.count') do
      post :create, :other => { }
    end

    assert_redirected_to other_path(assigns(:other))
  end

  def test_should_show_other
    get :show, :id => others(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => others(:one).id
    assert_response :success
  end

  def test_should_update_other
    put :update, :id => others(:one).id, :other => { }
    assert_redirected_to other_path(assigns(:other))
  end

  def test_should_destroy_other
    assert_difference('Other.count', -1) do
      delete :destroy, :id => others(:one).id
    end

    assert_redirected_to others_path
  end
end
