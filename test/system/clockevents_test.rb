require "application_system_test_case"

class ClockeventsTest < ApplicationSystemTestCase
  setup do
    @clockevent = clockevents(:one)
  end

  test "visiting the index" do
    visit clockevents_url
    assert_selector "h1", text: "Clockevents"
  end

  test "creating a Clockevent" do
    visit clockevents_url
    click_on "New Clockevent"

    fill_in "Detail", with: @clockevent.detail
    fill_in "Type", with: @clockevent.type
    fill_in "User", with: @clockevent.user_id
    click_on "Create Clockevent"

    assert_text "Clockevent was successfully created"
    click_on "Back"
  end

  test "updating a Clockevent" do
    visit clockevents_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @clockevent.detail
    fill_in "Type", with: @clockevent.type
    fill_in "User", with: @clockevent.user_id
    click_on "Update Clockevent"

    assert_text "Clockevent was successfully updated"
    click_on "Back"
  end

  test "destroying a Clockevent" do
    visit clockevents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clockevent was successfully destroyed"
  end
end
