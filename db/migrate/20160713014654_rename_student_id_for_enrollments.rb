class RenameStudentIdForEnrollments < ActiveRecord::Migration
  def up
    remove_index :enrollments, name: :index_enrollments_on_student_id
    remove_foreign_key :enrollments, :students
    rename_column :enrollments, :student_id, :user_id
    add_foreign_key :enrollments, :users
    add_index :enrollments, [:user_id], name: :index_enrollments_on_user_id
  end

  def down
    remove_index :enrollments, name: :index_enrollments_on_user_id
    remove_foreign_key :enrollments, :users
    rename_column :enrollments, :user_id, :student_id
    add_foreign_key :enrollments, :students
    add_index :enrollments, [:student_id], name: :index_enrollments_on_student_id
  end
end
