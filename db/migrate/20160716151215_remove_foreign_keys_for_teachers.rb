class RemoveForeignKeysForTeachers < ActiveRecord::Migration
  def change
    remove_foreign_key "courses", "teachers"
  end
end
