require 'test_helper'

class Superadmin::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get superadmin_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get superadmin_orders_show_url
    assert_response :success
  end

  test "should get edit" do
    get superadmin_orders_edit_url
    assert_response :success
  end

  test "should get update" do
    get superadmin_orders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get superadmin_orders_destroy_url
    assert_response :success
  end

end
