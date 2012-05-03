class AddServicesToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :services, :string

  end
end
