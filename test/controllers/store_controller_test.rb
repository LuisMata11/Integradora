require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    assert_select '.price', /\$[,\d]+\.\d\d/
  end
end
