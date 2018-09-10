require 'test_helper'

class MushroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mushroom = mushrooms(:one)
  end

  test "should get index" do
    get mushrooms_url, as: :json
    assert_response :success
  end

  test "should create mushroom" do
    assert_difference('Mushroom.count') do
      post mushrooms_url, params: { mushroom: { latin_name: @mushroom.latin_name, string: @mushroom.string } }, as: :json
    end

    assert_response 201
  end

  test "should show mushroom" do
    get mushroom_url(@mushroom), as: :json
    assert_response :success
  end

  test "should update mushroom" do
    patch mushroom_url(@mushroom), params: { mushroom: { latin_name: @mushroom.latin_name, string: @mushroom.string } }, as: :json
    assert_response 200
  end

  test "should destroy mushroom" do
    assert_difference('Mushroom.count', -1) do
      delete mushroom_url(@mushroom), as: :json
    end

    assert_response 204
  end
end
