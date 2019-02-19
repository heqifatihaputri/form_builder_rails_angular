require 'test_helper'

class SubDropdownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_dropdown = sub_dropdowns(:one)
  end

  test "should get index" do
    get sub_dropdowns_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_dropdown_url
    assert_response :success
  end

  test "should create sub_dropdown" do
    assert_difference('SubDropdown.count') do
      post sub_dropdowns_url, params: { sub_dropdown: { choice_name: @sub_dropdown.choice_name, price: @sub_dropdown.price } }
    end

    assert_redirected_to sub_dropdown_url(SubDropdown.last)
  end

  test "should show sub_dropdown" do
    get sub_dropdown_url(@sub_dropdown)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_dropdown_url(@sub_dropdown)
    assert_response :success
  end

  test "should update sub_dropdown" do
    patch sub_dropdown_url(@sub_dropdown), params: { sub_dropdown: { choice_name: @sub_dropdown.choice_name, price: @sub_dropdown.price } }
    assert_redirected_to sub_dropdown_url(@sub_dropdown)
  end

  test "should destroy sub_dropdown" do
    assert_difference('SubDropdown.count', -1) do
      delete sub_dropdown_url(@sub_dropdown)
    end

    assert_redirected_to sub_dropdowns_url
  end
end
