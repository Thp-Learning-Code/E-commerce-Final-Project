require 'test_helper'

class Superadmin::AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_admin_index_url
    assert_response :success
  end

  test "should get new" do
    get superadmin_admin_new_url
    assert_response :success
  end

  test "should get create" do
    get superadmin_admin_create_url
    assert_response :success
  end

  test "should get show" do
    get superadmin_admin_show_url
    assert_response :success
  end

  test "should get update" do
    get superadmin_admin_update_url
    assert_response :success
  end

  test "should get destroy" do
    get superadmin_admin_destroy_url
    assert_response :success
  end

end
