class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title, null: false
      t.text :why
      t.text :copy

      t.timestamps
    end

    add_index :ideas, :title
  end
end
