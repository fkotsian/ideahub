class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url, null: false
      t.references :idea, index: true
      t.text :notes

      t.timestamps
    end

    add_index :links, :title
    add_index :links, :url
  end
end
