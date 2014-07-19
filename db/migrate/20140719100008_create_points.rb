class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :title
      t.text :description
      t.integer :topic_id
      t.integer :user_id

      t.timestamps
    end
  end
end
