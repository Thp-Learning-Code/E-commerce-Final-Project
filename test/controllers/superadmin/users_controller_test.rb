require 'test_helper'

class Superadmin::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_users_index_url
    assert_response :success
  end

  test "should get show" do
    get superadmin_users_show_url
    assert_response :success
  end

  test "should get new" do
    get superadmin_users_new_url
    assert_response :success
  end

  test "should get create" do
    get superadmin_users_create_url
    assert_response :success
  end

  test "should get update" do
    get superadmin_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get superadmin_users_destroy_url
    assert_response :success
  end

end
