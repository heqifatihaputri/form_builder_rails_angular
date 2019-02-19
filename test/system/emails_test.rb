require "application_system_test_case"

class EmailsTest < ApplicationSystemTestCase
  setup do
    @email = emails(:one)
  end

  test "visiting the index" do
    visit emails_url
    assert_selector "h1", text: "Emails"
  end

  test "creating a Email" do
    visit emails_url
    click_on "New Email"

    fill_in "Half width", with: @email.half_width
    fill_in "Label name", with: @email.label_name
    fill_in "Mailchimp", with: @email.mailchimp
    fill_in "Required field", with: @email.required_field
    click_on "Create Email"

    assert_text "Email was successfully created"
    click_on "Back"
  end

  test "updating a Email" do
    visit emails_url
    click_on "Edit", match: :first

    fill_in "Half width", with: @email.half_width
    fill_in "Label name", with: @email.label_name
    fill_in "Mailchimp", with: @email.mailchimp
    fill_in "Required field", with: @email.required_field
    click_on "Update Email"

    assert_text "Email was successfully updated"
    click_on "Back"
  end

  test "destroying a Email" do
    visit emails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Email was successfully destroyed"
  end
end
