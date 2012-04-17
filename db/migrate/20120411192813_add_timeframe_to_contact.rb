class AddTimeframeToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :timeframe, :string

  end
end
