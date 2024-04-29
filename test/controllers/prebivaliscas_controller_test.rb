require "test_helper"

class PrebivaliscasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prebivalisca = prebivaliscas(:one)
  end

  test "should get index" do
    get prebivaliscas_url
    assert_response :success
  end

  test "should get new" do
    get new_prebivalisca_url
    assert_response :success
  end

  test "should create prebivalisca" do
    assert_difference("Prebivalisca.count") do
      post prebivaliscas_url, params: { prebivalisca: { Name: @prebivalisca.Name, rating: @prebivalisca.rating } }
    end

    assert_redirected_to prebivalisca_url(Prebivalisca.last)
  end

  test "should show prebivalisca" do
    get prebivalisca_url(@prebivalisca)
    assert_response :success
  end

  test "should get edit" do
    get edit_prebivalisca_url(@prebivalisca)
    assert_response :success
  end

  test "should update prebivalisca" do
    patch prebivalisca_url(@prebivalisca), params: { prebivalisca: { Name: @prebivalisca.Name, rating: @prebivalisca.rating } }
    assert_redirected_to prebivalisca_url(@prebivalisca)
  end

  test "should destroy prebivalisca" do
    assert_difference("Prebivalisca.count", -1) do
      delete prebivalisca_url(@prebivalisca)
    end

    assert_redirected_to prebivaliscas_url
  end
end
