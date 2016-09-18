class ChangeColumnNameTodoListIdFromTodoItem < ActiveRecord::Migration
  def change
    remove_index :todo_items, :TodoList_id
    rename_column :todo_items, :TodoList_id, :todo_list_id
    add_index :todo_items, :todo_list_id
  end
end
