require 'test_helper'

class AumentatiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aumentaty = aumentaties(:one)
  end

  test "should get index" do
    get aumentaties_url
    assert_response :success
  end

  test "should get new" do
    get new_aumentaty_url
    assert_response :success
  end

  test "should create aumentaty" do
    assert_difference('Aumentaty.count') do
      post aumentaties_url, params: { aumentaty: { aum: @aumentaty.aum } }
    end

    assert_redirected_to aumentaty_url(Aumentaty.last)
  end

  test "should show aumentaty" do
    get aumentaty_url(@aumentaty)
    assert_response :success
  end

  test "should get edit" do
    get edit_aumentaty_url(@aumentaty)
    assert_response :success
  end

  test "should update aumentaty" do
    patch aumentaty_url(@aumentaty), params: { aumentaty: { aum: @aumentaty.aum } }
    assert_redirected_to aumentaty_url(@aumentaty)
  end

  test "should destroy aumentaty" do
    assert_difference('Aumentaty.count', -1) do
      delete aumentaty_url(@aumentaty)
    end

    assert_redirected_to aumentaties_url
  end
end
