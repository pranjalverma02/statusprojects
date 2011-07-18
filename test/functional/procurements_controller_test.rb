require 'test_helper'

class ProcurementsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:procurements)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_procurement
    assert_difference('Procurement.count') do
      post :create, :procurement => { }
    end

    assert_redirected_to procurement_path(assigns(:procurement))
  end

  def test_should_show_procurement
    get :show, :id => procurements(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => procurements(:one).id
    assert_response :success
  end

  def test_should_update_procurement
    put :update, :id => procurements(:one).id, :procurement => { }
    assert_redirected_to procurement_path(assigns(:procurement))
  end

  def test_should_destroy_procurement
    assert_difference('Procurement.count', -1) do
      delete :destroy, :id => procurements(:one).id
    end

    assert_redirected_to procurements_path
  end
end
