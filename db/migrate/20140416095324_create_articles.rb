class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :item
      t.integer :amount

      t.timestamps
    end
  end
end
