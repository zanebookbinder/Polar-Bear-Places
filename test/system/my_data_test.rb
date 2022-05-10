require "application_system_test_case"

class MyDataTest < ApplicationSystemTestCase
  setup do
    @my_datum = my_data(:one)
  end

  test "visiting the index" do
    visit my_data_url
    assert_selector "h1", text: "My data"
  end

  test "should create my datum" do
    visit my_data_url
    click_on "New my datum"

    fill_in "Building", with: @my_datum.Building
    fill_in "Email", with: @my_datum.Email
    fill_in "Name", with: @my_datum.Name
    fill_in "Room", with: @my_datum.Room
    fill_in "Studentid", with: @my_datum.StudentID
    fill_in "Year", with: @my_datum.Year
    click_on "Create My datum"

    assert_text "My datum was successfully created"
    click_on "Back"
  end

  test "should update My datum" do
    visit my_datum_url(@my_datum)
    click_on "Edit this my datum", match: :first

    fill_in "Building", with: @my_datum.Building
    fill_in "Email", with: @my_datum.Email
    fill_in "Name", with: @my_datum.Name
    fill_in "Room", with: @my_datum.Room
    fill_in "Studentid", with: @my_datum.StudentID
    fill_in "Year", with: @my_datum.Year
    click_on "Update My datum"

    assert_text "My datum was successfully updated"
    click_on "Back"
  end

  test "should destroy My datum" do
    visit my_datum_url(@my_datum)
    click_on "Destroy this my datum", match: :first

    assert_text "My datum was successfully destroyed"
  end
end
