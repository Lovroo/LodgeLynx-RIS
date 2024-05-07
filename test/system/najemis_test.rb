require "application_system_test_case"

class NajemisTest < ApplicationSystemTestCase
  setup do
    @najemi = najemis(:one)
  end

  test "visiting the index" do
    visit najemis_url
    assert_selector "h1", text: "Najemis"
  end

  test "should create najemi" do
    visit najemis_url
    click_on "New najemi"

    fill_in "Dat konec najema", with: @najemi.dat_konec_najema
    fill_in "Dat najema", with: @najemi.dat_najema
    click_on "Create Najemi"

    assert_text "Najemi was successfully created"
    click_on "Back"
  end

  test "should update Najemi" do
    visit najemi_url(@najemi)
    click_on "Edit this najemi", match: :first

    fill_in "Dat konec najema", with: @najemi.dat_konec_najema
    fill_in "Dat najema", with: @najemi.dat_najema
    click_on "Update Najemi"

    assert_text "Najemi was successfully updated"
    click_on "Back"
  end

  test "should destroy Najemi" do
    visit najemi_url(@najemi)
    click_on "Destroy this najemi", match: :first

    assert_text "Najemi was successfully destroyed"
  end
end
