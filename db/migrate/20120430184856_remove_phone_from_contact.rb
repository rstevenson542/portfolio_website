class RemovePhoneFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :phone
      end

  def down
    add_column :contacts, :phone, :string
  end
end
