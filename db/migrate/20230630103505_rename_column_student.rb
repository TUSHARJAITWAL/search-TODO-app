class RenameColumnStudent < ActiveRecord::Migration[7.0]
  def change
    rename_column :students , :DOB , :date_of_birth
  end
end
