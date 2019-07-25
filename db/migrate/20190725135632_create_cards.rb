class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :imageurl
      t.string :name
      t.string :description
      t.integer :apperception
      t.integer :charm
      t.integer :aggression

      t.timestamps
    end
  end
end
