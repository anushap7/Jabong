class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :reply
      t.integer :commenter_id

      t.timestamps
    end
  end
end
