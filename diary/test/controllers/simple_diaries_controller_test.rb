require 'test_helper'

class SimpleDiariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simple_diary = simple_diaries(:one)
  end

  test "should get index" do
    get simple_diaries_url
    assert_response :success
  end

  test "should get new" do
    get new_simple_diary_url
    assert_response :success
  end

  test "should create simple_diary" do
    assert_difference('SimpleDiary.count') do
      post simple_diaries_url, params: { simple_diary: { body: @simple_diary.body, title: @simple_diary.title } }
    end

    assert_redirected_to simple_diary_url(SimpleDiary.last)
  end

  test "should show simple_diary" do
    get simple_diary_url(@simple_diary)
    assert_response :success
  end

  test "should get edit" do
    get edit_simple_diary_url(@simple_diary)
    assert_response :success
  end

  test "should update simple_diary" do
    patch simple_diary_url(@simple_diary), params: { simple_diary: { body: @simple_diary.body, title: @simple_diary.title } }
    assert_redirected_to simple_diary_url(@simple_diary)
  end

  test "should destroy simple_diary" do
    assert_difference('SimpleDiary.count', -1) do
      delete simple_diary_url(@simple_diary)
    end

    assert_redirected_to simple_diaries_url
  end
end
