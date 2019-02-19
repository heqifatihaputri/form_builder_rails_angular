require "application_system_test_case"

class SubDropdownsTest < ApplicationSystemTestCase
  setup do
    @sub_dropdown = sub_dropdowns(:one)
  end

  test "visiting the index" do
    visit sub_dropdowns_url
    assert_selector "h1", text: "Sub Dropdowns"
  end

  test "creating a Sub dropdown" do
    visit sub_dropdowns_url
    click_on "New Sub Dropdown"

    fill_in "Choice name", with: @sub_dropdown.choice_name
    fill_in "Price", with: @sub_dropdown.price
    click_on "Create Sub dropdown"

    assert_text "Sub dropdown was successfully created"
    click_on "Back"
  end

  test "updating a Sub dropdown" do
    visit sub_dropdowns_url
    click_on "Edit", match: :first

    fill_in "Choice name", with: @sub_dropdown.choice_name
    fill_in "Price", with: @sub_dropdown.price
    click_on "Update Sub dropdown"

    assert_text "Sub dropdown was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub dropdown" do
    visit sub_dropdowns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub dropdown was successfully destroyed"
  end
end
