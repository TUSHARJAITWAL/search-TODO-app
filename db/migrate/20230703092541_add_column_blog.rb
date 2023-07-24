class AddColumnBlog < ActiveRecord::Migration[7.0]
  def change 
    add_column :blogs,:student_id,:integer
  end
end
