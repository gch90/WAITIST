require "test_helper"

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get applications_index_url
    assert_response :success
  end

  test "should get show" do
    get applications_show_url
    assert_response :success
  end
end
