require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success

    setup do
      login_as users(:one)
    end


    #assert_select "nav a", minimum: 4
    #assert_select "main ul li", 3
    #assert_select "h2", "The Placeholder"
    #assert_select "div", /\$[,\d]+\.\d\d/
  end
end


