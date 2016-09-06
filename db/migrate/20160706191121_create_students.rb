class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :nom
      t.string :prenom
      t.date :dob
      t.string :statut

      t.timestamps null: false
    end
  end
end
