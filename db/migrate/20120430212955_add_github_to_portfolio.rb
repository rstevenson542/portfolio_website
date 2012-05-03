class AddGithubToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :github, :string

  end
end
