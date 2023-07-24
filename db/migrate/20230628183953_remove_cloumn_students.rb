class RemoveCloumnStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students , :stud_address , :string
  end
end
