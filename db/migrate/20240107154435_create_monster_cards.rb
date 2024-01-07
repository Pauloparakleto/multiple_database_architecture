class CreateMonsterCards < ActiveRecord::Migration[7.1]
  def change
    create_table :monster_cards do |t|
      t.string :name
      t.string :kind
      t.integer :attack
      t.integer :defense

      t.timestamps
    end
  end
end
