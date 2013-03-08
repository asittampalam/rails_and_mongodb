require 'test_helper'

class PublicpagesControllerTest < ActionController::TestCase
  test "should get public_index" do
    get :public_index
    assert_response :success
  end

end
