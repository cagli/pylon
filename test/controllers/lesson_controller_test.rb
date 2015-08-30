require 'test_helper'

class LessonControllerTest < ActionController::TestCase
  test "should get chapter:references" do
    get :chapter:references
    assert_response :success
  end

end
