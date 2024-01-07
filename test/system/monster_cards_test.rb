require "application_system_test_case"

class MonsterCardsTest < ApplicationSystemTestCase
  setup do
    @monster_card = monster_cards(:one)
  end

  test "visiting the index" do
    visit monster_cards_url
    assert_selector "h1", text: "Monster cards"
  end

  test "should create monster card" do
    visit monster_cards_url
    click_on "New monster card"

    fill_in "Attack", with: @monster_card.attack
    fill_in "Defense", with: @monster_card.defense
    fill_in "Kind", with: @monster_card.kind
    fill_in "Name", with: @monster_card.name
    click_on "Create Monster card"

    assert_text "Monster card was successfully created"
    click_on "Back"
  end

  test "should update Monster card" do
    visit monster_card_url(@monster_card)
    click_on "Edit this monster card", match: :first

    fill_in "Attack", with: @monster_card.attack
    fill_in "Defense", with: @monster_card.defense
    fill_in "Kind", with: @monster_card.kind
    fill_in "Name", with: @monster_card.name
    click_on "Update Monster card"

    assert_text "Monster card was successfully updated"
    click_on "Back"
  end

  test "should destroy Monster card" do
    visit monster_card_url(@monster_card)
    click_on "Destroy this monster card", match: :first

    assert_text "Monster card was successfully destroyed"
  end
end
