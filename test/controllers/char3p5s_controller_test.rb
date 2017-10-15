require 'test_helper'

class Char3p5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @char3p5 = char3p5s(:one)
  end

  test "should get index" do
    get char3p5s_url
    assert_response :success
  end

  test "should get new" do
    get new_char3p5_url
    assert_response :success
  end

  test "should create char3p5" do
    assert_difference('Char3p5.count') do
      post char3p5s_url, params: { char3p5: { charisma: @char3p5.charisma, constitution: @char3p5.constitution, dextery: @char3p5.dextery, intelligence: @char3p5.intelligence, name: @char3p5.name, strength: @char3p5.strength, wisdom: @char3p5.wisdom } }
    end

    assert_redirected_to char3p5_url(Char3p5.last)
  end

  test "should show char3p5" do
    get char3p5_url(@char3p5)
    assert_response :success
  end

  test "should get edit" do
    get edit_char3p5_url(@char3p5)
    assert_response :success
  end

  test "should update char3p5" do
    patch char3p5_url(@char3p5), params: { char3p5: { charisma: @char3p5.charisma, constitution: @char3p5.constitution, dextery: @char3p5.dextery, intelligence: @char3p5.intelligence, name: @char3p5.name, strength: @char3p5.strength, wisdom: @char3p5.wisdom } }
    assert_redirected_to char3p5_url(@char3p5)
  end

  test "should destroy char3p5" do
    assert_difference('Char3p5.count', -1) do
      delete char3p5_url(@char3p5)
    end

    assert_redirected_to char3p5s_url
  end
end
