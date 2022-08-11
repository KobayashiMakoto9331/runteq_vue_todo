class AddStatusToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :status, :integer, default: 1, null: false
  end
end