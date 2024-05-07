require "test_helper"

class NajemisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @najemi = najemis(:one)
  end

  test "should get index" do
    get najemis_url
    assert_response :success
  end

  test "should get new" do
    get new_najemi_url
    assert_response :success
  end

  test "should create najemi" do
    assert_difference("Najemi.count") do
      post najemis_url, params: { najemi: { dat_konec_najema: @najemi.dat_konec_najema, dat_najema: @najemi.dat_najema } }
    end

    assert_redirected_to najemi_url(Najemi.last)
  end

  test "should show najemi" do
    get najemi_url(@najemi)
    assert_response :success
  end

  test "should get edit" do
    get edit_najemi_url(@najemi)
    assert_response :success
  end

  test "should update najemi" do
    patch najemi_url(@najemi), params: { najemi: { dat_konec_najema: @najemi.dat_konec_najema, dat_najema: @najemi.dat_najema } }
    assert_redirected_to najemi_url(@najemi)
  end

  test "should destroy najemi" do
    assert_difference("Najemi.count", -1) do
      delete najemi_url(@najemi)
    end

    assert_redirected_to najemis_url
  end
end
