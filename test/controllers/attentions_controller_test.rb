require 'test_helper'

class AttentionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attention = attentions(:one)
  end

  test "should get index" do
    get attentions_url
    assert_response :success
  end

  test "should get new" do
    get new_attention_url
    assert_response :success
  end

  test "should create attention" do
    assert_difference('Attention.count') do
      post attentions_url, params: { attention: { cont: @attention.cont, dic: @attention.dic, horaF: @attention.horaF, horaI: @attention.horaI, nom: @attention.nom, tel: @attention.tel } }
    end

    assert_redirected_to attention_url(Attention.last)
  end

  test "should show attention" do
    get attention_url(@attention)
    assert_response :success
  end

  test "should get edit" do
    get edit_attention_url(@attention)
    assert_response :success
  end

  test "should update attention" do
    patch attention_url(@attention), params: { attention: { cont: @attention.cont, dic: @attention.dic, horaF: @attention.horaF, horaI: @attention.horaI, nom: @attention.nom, tel: @attention.tel } }
    assert_redirected_to attention_url(@attention)
  end

  test "should destroy attention" do
    assert_difference('Attention.count', -1) do
      delete attention_url(@attention)
    end

    assert_redirected_to attentions_url
  end
end
