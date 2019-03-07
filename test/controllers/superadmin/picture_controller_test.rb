require 'test_helper'

class Superadmin::PictureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_picture_index_url
    assert_response :success
  end

  test "should get show" do
    get superadmin_picture_show_url
    assert_response :success
  end

  test "should get new" do
    get superadmin_picture_new_url
    assert_response :success
  end

  test "should get create" do
    get superadmin_picture_create_url
    assert_response :success
  end

  test "should get update" do
    get superadmin_picture_update_url
    assert_response :success
  end

  test "should get destroy" do
    get superadmin_picture_destroy_url
    assert_response :success
  end

end
