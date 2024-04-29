require "application_system_test_case"

class PrebivaliscasTest < ApplicationSystemTestCase
  setup do
    @prebivalisca = prebivaliscas(:one)
  end

  test "visiting the index" do
    visit prebivaliscas_url
    assert_selector "h1", text: "Prebivaliscas"
  end

  test "should create prebivalisca" do
    visit prebivaliscas_url
    click_on "New prebivalisca"

    fill_in "Name", with: @prebivalisca.Name
    fill_in "Rating", with: @prebivalisca.rating
    click_on "Create Prebivalisca"

    assert_text "Prebivalisca was successfully created"
    click_on "Back"
  end

  test "should update Prebivalisca" do
    visit prebivalisca_url(@prebivalisca)
    click_on "Edit this prebivalisca", match: :first

    fill_in "Name", with: @prebivalisca.Name
    fill_in "Rating", with: @prebivalisca.rating
    click_on "Update Prebivalisca"

    assert_text "Prebivalisca was successfully updated"
    click_on "Back"
  end

  test "should destroy Prebivalisca" do
    visit prebivalisca_url(@prebivalisca)
    click_on "Destroy this prebivalisca", match: :first

    assert_text "Prebivalisca was successfully destroyed"
  end
end
