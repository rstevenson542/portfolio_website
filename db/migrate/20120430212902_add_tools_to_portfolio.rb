class AddToolsToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :tools, :string

  end
end
