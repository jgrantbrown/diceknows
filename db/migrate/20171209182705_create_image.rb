class CreateImage < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :name
      t.text :img_path
    end
  end
end
