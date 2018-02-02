require 'test_helper'

class DwpControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get set1" do
    get :set1
    assert_response :success
  end

end
