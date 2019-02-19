require 'test_helper'

class DatetimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @datetime = datetimes(:one)
  end

  test "should get index" do
    get datetimes_url
    assert_response :success
  end

  test "should get new" do
    get new_datetime_url
    assert_response :success
  end

  test "should create datetime" do
    assert_difference('Datetime.count') do
      post datetimes_url, params: { datetime: { date_format: @datetime.date_format, display_type: @datetime.display_type, half_width: @datetime.half_width, label_name: @datetime.label_name, required_field: @datetime.required_field, time_type: @datetime.time_type } }
    end

    assert_redirected_to datetime_url(Datetime.last)
  end

  test "should show datetime" do
    get datetime_url(@datetime)
    assert_response :success
  end

  test "should get edit" do
    get edit_datetime_url(@datetime)
    assert_response :success
  end

  test "should update datetime" do
    patch datetime_url(@datetime), params: { datetime: { date_format: @datetime.date_format, display_type: @datetime.display_type, half_width: @datetime.half_width, label_name: @datetime.label_name, required_field: @datetime.required_field, time_type: @datetime.time_type } }
    assert_redirected_to datetime_url(@datetime)
  end

  test "should destroy datetime" do
    assert_difference('Datetime.count', -1) do
      delete datetime_url(@datetime)
    end

    assert_redirected_to datetimes_url
  end
end
