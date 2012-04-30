class RemoveTimeframeFromContact < ActiveRecord::Migration
  def up
    remove_column :contacts, :timeframe
      end

  def down
    add_column :contacts, :timeframe, :string
  end
end
