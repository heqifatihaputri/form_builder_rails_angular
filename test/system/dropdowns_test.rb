require "application_system_test_case"

class DropdownsTest < ApplicationSystemTestCase
  setup do
    @dropdown = dropdowns(:one)
  end

  test "visiting the index" do
    visit dropdowns_url
    assert_selector "h1", text: "Dropdowns"
  end

  test "creating a Dropdown" do
    visit dropdowns_url
    click_on "New Dropdown"

    fill_in "Answer public", with: @dropdown.answer_public
    fill_in "Half width", with: @dropdown.half_width
    fill_in "Label name", with: @dropdown.label_name
    fill_in "Required field", with: @dropdown.required_field
    click_on "Create Dropdown"

    assert_text "Dropdown was successfully created"
    click_on "Back"
  end

  test "updating a Dropdown" do
    visit dropdowns_url
    click_on "Edit", match: :first

    fill_in "Answer public", with: @dropdown.answer_public
    fill_in "Half width", with: @dropdown.half_width
    fill_in "Label name", with: @dropdown.label_name
    fill_in "Required field", with: @dropdown.required_field
    click_on "Update Dropdown"

    assert_text "Dropdown was successfully updated"
    click_on "Back"
  end

  test "destroying a Dropdown" do
    visit dropdowns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dropdown was successfully destroyed"
  end
end
