require "test_helper"

class MonsterCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @monster_card = monster_cards(:one)
  end

  test "should get index" do
    get monster_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_monster_card_url
    assert_response :success
  end

  test "should create monster_card" do
    assert_difference("MonsterCard.count") do
      post monster_cards_url, params: { monster_card: { attack: @monster_card.attack, defense: @monster_card.defense, kind: @monster_card.kind, name: @monster_card.name } }
    end

    assert_redirected_to monster_card_url(MonsterCard.last)
  end

  test "should show monster_card" do
    get monster_card_url(@monster_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_monster_card_url(@monster_card)
    assert_response :success
  end

  test "should update monster_card" do
    patch monster_card_url(@monster_card), params: { monster_card: { attack: @monster_card.attack, defense: @monster_card.defense, kind: @monster_card.kind, name: @monster_card.name } }
    assert_redirected_to monster_card_url(@monster_card)
  end

  test "should destroy monster_card" do
    assert_difference("MonsterCard.count", -1) do
      delete monster_card_url(@monster_card)
    end

    assert_redirected_to monster_cards_url
  end
end
