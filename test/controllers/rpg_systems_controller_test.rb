require 'test_helper'

class RpgSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rpg_system = rpg_systems(:one)
  end

  test "should get index" do
    get rpg_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_rpg_system_url
    assert_response :success
  end

  test "should create rpg_system" do
    assert_difference('RpgSystem.count') do
      post rpg_systems_url, params: { rpg_system: { name: @rpg_system.name } }
    end

    assert_redirected_to rpg_system_url(RpgSystem.last)
  end

  test "should show rpg_system" do
    get rpg_system_url(@rpg_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_rpg_system_url(@rpg_system)
    assert_response :success
  end

  test "should update rpg_system" do
    patch rpg_system_url(@rpg_system), params: { rpg_system: { name: @rpg_system.name } }
    assert_redirected_to rpg_system_url(@rpg_system)
  end

  test "should destroy rpg_system" do
    assert_difference('RpgSystem.count', -1) do
      delete rpg_system_url(@rpg_system)
    end

    assert_redirected_to rpg_systems_url
  end
end
