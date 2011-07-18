require 'test_helper'

class MaintenanceofficesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:maintenanceoffices)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_maintenanceoffice
    assert_difference('Maintenanceoffice.count') do
      post :create, :maintenanceoffice => { }
    end

    assert_redirected_to maintenanceoffice_path(assigns(:maintenanceoffice))
  end

  def test_should_show_maintenanceoffice
    get :show, :id => maintenanceoffices(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => maintenanceoffices(:one).id
    assert_response :success
  end

  def test_should_update_maintenanceoffice
    put :update, :id => maintenanceoffices(:one).id, :maintenanceoffice => { }
    assert_redirected_to maintenanceoffice_path(assigns(:maintenanceoffice))
  end

  def test_should_destroy_maintenanceoffice
    assert_difference('Maintenanceoffice.count', -1) do
      delete :destroy, :id => maintenanceoffices(:one).id
    end

    assert_redirected_to maintenanceoffices_path
  end
end
