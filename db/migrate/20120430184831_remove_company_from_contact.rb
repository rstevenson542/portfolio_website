class RemoveCompanyFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :company
      end

  def down
    add_column :contacts, :company, :string
  end
end
