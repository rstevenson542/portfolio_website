class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :context
      t.text :description

      t.timestamps
    end
  end
end
