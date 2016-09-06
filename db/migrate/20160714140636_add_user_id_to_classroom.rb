class AddUserIdToClassroom < ActiveRecord::Migration
  def change
    add_reference :classrooms, :user, index: true, foreign_key: true
  end
end
