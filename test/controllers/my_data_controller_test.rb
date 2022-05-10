require "test_helper"

class MyDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_datum = my_data(:one)
  end

  test "should get index" do
    get my_data_url
    assert_response :success
  end

  test "should get new" do
    get new_my_datum_url
    assert_response :success
  end

  test "should create my_datum" do
    assert_difference("MyDatum.count") do
      post my_data_url, params: { my_datum: { Building: @my_datum.Building, Email: @my_datum.Email, Name: @my_datum.Name, Room: @my_datum.Room, StudentID: @my_datum.StudentID, Year: @my_datum.Year } }
    end

    assert_redirected_to my_datum_url(MyDatum.last)
  end

  test "should show my_datum" do
    get my_datum_url(@my_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_datum_url(@my_datum)
    assert_response :success
  end

  test "should update my_datum" do
    patch my_datum_url(@my_datum), params: { my_datum: { Building: @my_datum.Building, Email: @my_datum.Email, Name: @my_datum.Name, Room: @my_datum.Room, StudentID: @my_datum.StudentID, Year: @my_datum.Year } }
    assert_redirected_to my_datum_url(@my_datum)
  end

  test "should destroy my_datum" do
    assert_difference("MyDatum.count", -1) do
      delete my_datum_url(@my_datum)
    end

    assert_redirected_to my_data_url
  end
end
