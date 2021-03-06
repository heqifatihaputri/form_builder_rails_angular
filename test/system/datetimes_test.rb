require "application_system_test_case"

class DatetimesTest < ApplicationSystemTestCase
  setup do
    @datetime = datetimes(:one)
  end

  test "visiting the index" do
    visit datetimes_url
    assert_selector "h1", text: "Datetimes"
  end

  test "creating a Datetime" do
    visit datetimes_url
    click_on "New Datetime"

    fill_in "Date format", with: @datetime.date_format
    fill_in "Display type", with: @datetime.display_type
    fill_in "Half width", with: @datetime.half_width
    fill_in "Label name", with: @datetime.label_name
    fill_in "Required field", with: @datetime.required_field
    fill_in "Time type", with: @datetime.time_type
    click_on "Create Datetime"

    assert_text "Datetime was successfully created"
    click_on "Back"
  end

  test "updating a Datetime" do
    visit datetimes_url
    click_on "Edit", match: :first

    fill_in "Date format", with: @datetime.date_format
    fill_in "Display type", with: @datetime.display_type
    fill_in "Half width", with: @datetime.half_width
    fill_in "Label name", with: @datetime.label_name
    fill_in "Required field", with: @datetime.required_field
    fill_in "Time type", with: @datetime.time_type
    click_on "Update Datetime"

    assert_text "Datetime was successfully updated"
    click_on "Back"
  end

  test "destroying a Datetime" do
    visit datetimes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datetime was successfully destroyed"
  end
end
