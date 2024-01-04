require "application_system_test_case"

class MetersTest < ApplicationSystemTestCase
  setup do
    @meter = meters(:one)
  end

  test "visiting the index" do
    visit meters_url
    assert_selector "h1", text: "Meters"
  end

  test "should create meter" do
    visit meters_url
    click_on "New meter"

    fill_in "Meter number", with: @meter.meter_number
    click_on "Create Meter"

    assert_text "Meter was successfully created"
    click_on "Back"
  end

  test "should update Meter" do
    visit meter_url(@meter)
    click_on "Edit this meter", match: :first

    fill_in "Meter number", with: @meter.meter_number
    click_on "Update Meter"

    assert_text "Meter was successfully updated"
    click_on "Back"
  end

  test "should destroy Meter" do
    visit meter_url(@meter)
    click_on "Destroy this meter", match: :first

    assert_text "Meter was successfully destroyed"
  end
end
