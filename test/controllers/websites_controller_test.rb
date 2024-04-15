require "test_helper"

class WebsitesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get websites_new_url
    assert_response :success
  end

  test "should get show" do
    get websites_show_url
    assert_response :success
  end
end
