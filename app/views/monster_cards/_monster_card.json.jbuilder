json.extract! monster_card, :id, :name, :kind, :attack, :defense, :created_at, :updated_at
json.url monster_card_url(monster_card, format: :json)
