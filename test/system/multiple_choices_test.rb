require "application_system_test_case"

class MultipleChoicesTest < ApplicationSystemTestCase
  setup do
    @multiple_choice = multiple_choices(:one)
  end

  test "visiting the index" do
    visit multiple_choices_url
    assert_selector "h1", text: "Multiple Choices"
  end

  test "creating a Multiple choice" do
    visit multiple_choices_url
    click_on "New Multiple Choice"

    fill_in "Alignment", with: @multiple_choice.alignment
    fill_in "Half width", with: @multiple_choice.half_width
    fill_in "Label name", with: @multiple_choice.label_name
    fill_in "Required field", with: @multiple_choice.required_field
    click_on "Create Multiple choice"

    assert_text "Multiple choice was successfully created"
    click_on "Back"
  end

  test "updating a Multiple choice" do
    visit multiple_choices_url
    click_on "Edit", match: :first

    fill_in "Alignment", with: @multiple_choice.alignment
    fill_in "Half width", with: @multiple_choice.half_width
    fill_in "Label name", with: @multiple_choice.label_name
    fill_in "Required field", with: @multiple_choice.required_field
    click_on "Update Multiple choice"

    assert_text "Multiple choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Multiple choice" do
    visit multiple_choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multiple choice was successfully destroyed"
  end
end
