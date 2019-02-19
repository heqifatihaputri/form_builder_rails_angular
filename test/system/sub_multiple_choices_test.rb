require "application_system_test_case"

class SubMultipleChoicesTest < ApplicationSystemTestCase
  setup do
    @sub_multiple_choice = sub_multiple_choices(:one)
  end

  test "visiting the index" do
    visit sub_multiple_choices_url
    assert_selector "h1", text: "Sub Multiple Choices"
  end

  test "creating a Sub multiple choice" do
    visit sub_multiple_choices_url
    click_on "New Sub Multiple Choice"

    fill_in "Choice name", with: @sub_multiple_choice.choice_name
    fill_in "Price", with: @sub_multiple_choice.price
    click_on "Create Sub multiple choice"

    assert_text "Sub multiple choice was successfully created"
    click_on "Back"
  end

  test "updating a Sub multiple choice" do
    visit sub_multiple_choices_url
    click_on "Edit", match: :first

    fill_in "Choice name", with: @sub_multiple_choice.choice_name
    fill_in "Price", with: @sub_multiple_choice.price
    click_on "Update Sub multiple choice"

    assert_text "Sub multiple choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Sub multiple choice" do
    visit sub_multiple_choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sub multiple choice was successfully destroyed"
  end
end
