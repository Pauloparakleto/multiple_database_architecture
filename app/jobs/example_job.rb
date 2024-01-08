class ExampleJob < ApplicationJob
  queue_as :monster_card
  def perform(*)
    MonsterCard.create(name: 'Monster Skull')
  end
end