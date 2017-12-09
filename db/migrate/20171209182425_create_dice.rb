class CreateDice < ActiveRecord::Migration[5.1]
  def change
    create_table :dices do |t|
      t.integer :image_id
      t.integer :saying_id
    end
  end
end
