class RenameColumnStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students  , :address ,:stud_address
  end
end
