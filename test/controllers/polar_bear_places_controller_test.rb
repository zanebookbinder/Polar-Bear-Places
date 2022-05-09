require "test_helper"

class PolarBearPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get polar_bear_places_index_url
    assert_response :success
  end
end
