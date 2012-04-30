class RemoveBudgetFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :budget
      end

  def down
    add_column :contacts, :budget, :string
  end
end
