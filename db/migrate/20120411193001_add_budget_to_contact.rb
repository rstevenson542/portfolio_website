class AddBudgetToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :budget, :string

  end
end
