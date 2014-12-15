require 'test_helper'

class MinharotaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
