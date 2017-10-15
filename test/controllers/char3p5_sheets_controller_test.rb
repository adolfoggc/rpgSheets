require 'test_helper'

class Char3p5SheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @char3p5_sheet = char3p5_sheets(:one)
  end

  test "should get index" do
    get char3p5_sheets_url
    assert_response :success
  end

  test "should get new" do
    get new_char3p5_sheet_url
    assert_response :success
  end

  test "should create char3p5_sheet" do
    assert_difference('Char3p5Sheet.count') do
      post char3p5_sheets_url, params: { char3p5_sheet: { charisma: @char3p5_sheet.charisma, constitution: @char3p5_sheet.constitution, cooper_piece: @char3p5_sheet.cooper_piece, dextery: @char3p5_sheet.dextery, gold_piece: @char3p5_sheet.gold_piece, intelligence: @char3p5_sheet.intelligence, name: @char3p5_sheet.name, silver_piece: @char3p5_sheet.silver_piece, strength: @char3p5_sheet.strength, wisdom: @char3p5_sheet.wisdom } }
    end

    assert_redirected_to char3p5_sheet_url(Char3p5Sheet.last)
  end

  test "should show char3p5_sheet" do
    get char3p5_sheet_url(@char3p5_sheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_char3p5_sheet_url(@char3p5_sheet)
    assert_response :success
  end

  test "should update char3p5_sheet" do
    patch char3p5_sheet_url(@char3p5_sheet), params: { char3p5_sheet: { charisma: @char3p5_sheet.charisma, constitution: @char3p5_sheet.constitution, cooper_piece: @char3p5_sheet.cooper_piece, dextery: @char3p5_sheet.dextery, gold_piece: @char3p5_sheet.gold_piece, intelligence: @char3p5_sheet.intelligence, name: @char3p5_sheet.name, silver_piece: @char3p5_sheet.silver_piece, strength: @char3p5_sheet.strength, wisdom: @char3p5_sheet.wisdom } }
    assert_redirected_to char3p5_sheet_url(@char3p5_sheet)
  end

  test "should destroy char3p5_sheet" do
    assert_difference('Char3p5Sheet.count', -1) do
      delete char3p5_sheet_url(@char3p5_sheet)
    end

    assert_redirected_to char3p5_sheets_url
  end
end
