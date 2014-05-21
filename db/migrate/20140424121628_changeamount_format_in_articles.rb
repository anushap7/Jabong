class ChangeamountFormatInArticles < ActiveRecord::Migration
  def change
  	change_column :articles, :amount, :string
  end
end
