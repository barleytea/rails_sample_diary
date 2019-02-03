require "application_system_test_case"

class SimpleDiariesTest < ApplicationSystemTestCase
  setup do
    @simple_diary = simple_diaries(:one)
  end

  test "visiting the index" do
    visit simple_diaries_url
    assert_selector "h1", text: "Simple Diaries"
  end

  test "creating a Simple diary" do
    visit simple_diaries_url
    click_on "New Simple Diary"

    fill_in "Body", with: @simple_diary.body
    fill_in "Title", with: @simple_diary.title
    click_on "Create Simple diary"

    assert_text "Simple diary was successfully created"
    click_on "Back"
  end

  test "updating a Simple diary" do
    visit simple_diaries_url
    click_on "Edit", match: :first

    fill_in "Body", with: @simple_diary.body
    fill_in "Title", with: @simple_diary.title
    click_on "Update Simple diary"

    assert_text "Simple diary was successfully updated"
    click_on "Back"
  end

  test "destroying a Simple diary" do
    visit simple_diaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Simple diary was successfully destroyed"
  end
end
