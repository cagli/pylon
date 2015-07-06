class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :tite
      t.text :description
      t.string :logo
      t.text :category
      t.string :level
      t.string :teacher
      t.text :learning_skills
      t.integer :points

      t.timestamps null: false
    end
  end
end
