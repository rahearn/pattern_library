require 'test_helper'

module PatternLibrary
  class PatternsControllerTest < ActionController::TestCase
    test "should get index" do
      get :index, use_route: :pattern_library
      assert_response :success
    end
  end
end
