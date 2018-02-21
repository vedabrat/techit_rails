require 'test_helper'

class NjmjofficialsControllerTest < ActionController::TestCase
  test "should get pres" do
    get :pres
    assert_response :success
  end

  test "should get secretary" do
    get :secretary
    assert_response :success
  end

  test "should get treasurer" do
    get :treasurer
    assert_response :success
  end

  test "should get vp" do
    get :vp
    assert_response :success
  end

  test "should get parlimentarian" do
    get :parlimentarian
    assert_response :success
  end

  test "should get programming" do
    get :programming
    assert_response :success
  end

  test "should get recruit_retain_director" do
    get :recruit_retain_director
    assert_response :success
  end

  test "should get marking_pr" do
    get :marking_pr
    assert_response :success
  end

  test "should get community_serv_dir" do
    get :community_serv_dir
    assert_response :success
  end

  test "should get historian" do
    get :historian
    assert_response :success
  end

end
