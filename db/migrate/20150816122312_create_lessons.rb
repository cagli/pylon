class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :chapter, index: true
	  t.integer :lesson_id
      t.string :title
      t.text :description
      t.string :url_video
      t.decimal :time_video
      t.string :teacher
      t.text :transcript
      t.text :teacher_notes
      t.text :url_attachement

      t.timestamps null: false
    end
  end
end
