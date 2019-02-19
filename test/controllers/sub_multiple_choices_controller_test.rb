require 'test_helper'

class SubMultipleChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_multiple_choice = sub_multiple_choices(:one)
  end

  test "should get index" do
    get sub_multiple_choices_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_multiple_choice_url
    assert_response :success
  end

  test "should create sub_multiple_choice" do
    assert_difference('SubMultipleChoice.count') do
      post sub_multiple_choices_url, params: { sub_multiple_choice: { choice_name: @sub_multiple_choice.choice_name, price: @sub_multiple_choice.price } }
    end

    assert_redirected_to sub_multiple_choice_url(SubMultipleChoice.last)
  end

  test "should show sub_multiple_choice" do
    get sub_multiple_choice_url(@sub_multiple_choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_multiple_choice_url(@sub_multiple_choice)
    assert_response :success
  end

  test "should update sub_multiple_choice" do
    patch sub_multiple_choice_url(@sub_multiple_choice), params: { sub_multiple_choice: { choice_name: @sub_multiple_choice.choice_name, price: @sub_multiple_choice.price } }
    assert_redirected_to sub_multiple_choice_url(@sub_multiple_choice)
  end

  test "should destroy sub_multiple_choice" do
    assert_difference('SubMultipleChoice.count', -1) do
      delete sub_multiple_choice_url(@sub_multiple_choice)
    end

    assert_redirected_to sub_multiple_choices_url
  end
end
