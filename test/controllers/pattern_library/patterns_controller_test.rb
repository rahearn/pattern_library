require 'test_helper'

module PatternLibrary
  class PatternsControllerTest < ActionController::TestCase
    test "should get index" do
      @routes = PatternLibrary::Engine.routes
      get :index
      assert_response :success
    end
  end
end
