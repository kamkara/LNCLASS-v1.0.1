require 'test_helper'

class TablesClassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tables_class_index_url
    assert_response :success
  end

end
