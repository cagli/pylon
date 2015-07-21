class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :title
      t.text :description
      t.string :course_icon
      t.text :category
      t.string :level
      t.string :teacher
      t.text :learning_skills
      t.integer :course_points

      t.timestamps null: false
    end
  end
end
