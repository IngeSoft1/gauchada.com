require 'test_helper'

class EstadisticasControllerTest < ActionController::TestCase
  test "should get index1" do
    get :index1
    assert_response :success
  end

  test "should get index2" do
    get :index2
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
