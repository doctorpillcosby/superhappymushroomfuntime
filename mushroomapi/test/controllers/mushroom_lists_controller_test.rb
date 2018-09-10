require 'test_helper'

class MushroomListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mushroom_list = mushroom_lists(:one)
  end

  test "should get index" do
    get mushroom_lists_url, as: :json
    assert_response :success
  end

  test "should create mushroom_list" do
    assert_difference('MushroomList.count') do
      post mushroom_lists_url, params: { mushroom_list: { mushroom_id: @mushroom_list.mushroom_id, name: @mushroom_list.name, user_id: @mushroom_list.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show mushroom_list" do
    get mushroom_list_url(@mushroom_list), as: :json
    assert_response :success
  end

  test "should update mushroom_list" do
    patch mushroom_list_url(@mushroom_list), params: { mushroom_list: { mushroom_id: @mushroom_list.mushroom_id, name: @mushroom_list.name, user_id: @mushroom_list.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy mushroom_list" do
    assert_difference('MushroomList.count', -1) do
      delete mushroom_list_url(@mushroom_list), as: :json
    end

    assert_response 204
  end
end
