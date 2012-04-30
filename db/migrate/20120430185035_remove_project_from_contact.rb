class RemoveProjectFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :project
      end

  def down
    add_column :contacts, :project, :string
  end
end
