require "application_system_test_case"

class InfousersTest < ApplicationSystemTestCase
  setup do
    @infouser = infousers(:one)
  end

  test "visiting the index" do
    visit infousers_url
    assert_selector "h1", text: "Infousers"
  end

  test "should create infouser" do
    visit infousers_url
    click_on "New infouser"

    fill_in "User", with: @infouser.User_id
    fill_in "City", with: @infouser.city
    fill_in "Country", with: @infouser.country
    fill_in "Created date", with: @infouser.created_date
    fill_in "Favorite marvel character", with: @infouser.favorite_marvel_character
    fill_in "Favorite marvel comic", with: @infouser.favorite_marvel_comic
    fill_in "State", with: @infouser.state
    fill_in "Updated date", with: @infouser.updated_date
    click_on "Create Infouser"

    assert_text "Infouser was successfully created"
    click_on "Back"
  end

  test "should update Infouser" do
    visit infouser_url(@infouser)
    click_on "Edit this infouser", match: :first

    fill_in "User", with: @infouser.User_id
    fill_in "City", with: @infouser.city
    fill_in "Country", with: @infouser.country
    fill_in "Created date", with: @infouser.created_date
    fill_in "Favorite marvel character", with: @infouser.favorite_marvel_character
    fill_in "Favorite marvel comic", with: @infouser.favorite_marvel_comic
    fill_in "State", with: @infouser.state
    fill_in "Updated date", with: @infouser.updated_date
    click_on "Update Infouser"

    assert_text "Infouser was successfully updated"
    click_on "Back"
  end

  test "should destroy Infouser" do
    visit infouser_url(@infouser)
    click_on "Destroy this infouser", match: :first

    assert_text "Infouser was successfully destroyed"
  end
end
