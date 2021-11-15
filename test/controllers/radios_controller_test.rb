require 'test_helper'

class RadiosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get radios_index_url
    assert_response :success
  end

end
