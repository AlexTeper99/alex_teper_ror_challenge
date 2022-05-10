require "test_helper"

class InfousersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infouser = infousers(:one)
  end

  test "should get index" do
    get infousers_url
    assert_response :success
  end

  test "should get new" do
    get new_infouser_url
    assert_response :success
  end

  test "should create infouser" do
    assert_difference("Infouser.count") do
      post infousers_url, params: { infouser: { User_id: @infouser.User_id, city: @infouser.city, country: @infouser.country, created_date: @infouser.created_date, favorite_marvel_character: @infouser.favorite_marvel_character, favorite_marvel_comic: @infouser.favorite_marvel_comic, state: @infouser.state, updated_date: @infouser.updated_date } }
    end

    assert_redirected_to infouser_url(Infouser.last)
  end

  test "should show infouser" do
    get infouser_url(@infouser)
    assert_response :success
  end

  test "should get edit" do
    get edit_infouser_url(@infouser)
    assert_response :success
  end

  test "should update infouser" do
    patch infouser_url(@infouser), params: { infouser: { User_id: @infouser.User_id, city: @infouser.city, country: @infouser.country, created_date: @infouser.created_date, favorite_marvel_character: @infouser.favorite_marvel_character, favorite_marvel_comic: @infouser.favorite_marvel_comic, state: @infouser.state, updated_date: @infouser.updated_date } }
    assert_redirected_to infouser_url(@infouser)
  end

  test "should destroy infouser" do
    assert_difference("Infouser.count", -1) do
      delete infouser_url(@infouser)
    end

    assert_redirected_to infousers_url
  end
end
