class AddProjectToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :project, :string

  end
end
