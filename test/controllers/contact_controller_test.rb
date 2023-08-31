require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get _contact" do
    get contact__contact_url
    assert_response :success
  end
end
