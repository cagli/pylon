class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.references :course, index: true
      t.integer :chapter_id
      t.string :title
      t.text :description
      t.string :chapter_icon
      t.integer :chapter_points

      t.timestamps null: false
    end
  end
end
