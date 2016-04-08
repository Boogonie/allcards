require 'test_helper'

class CalculatorsControllerTest < ActionController::TestCase
  test "should get cbcalc" do
    get :cbcalc
    assert_response :success
  end

end
