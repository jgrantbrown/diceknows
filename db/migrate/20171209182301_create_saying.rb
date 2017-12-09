class CreateSaying < ActiveRecord::Migration[5.1]
  def change
    create_table :sayings do |t|
      t.string :word

    end
  end
end
