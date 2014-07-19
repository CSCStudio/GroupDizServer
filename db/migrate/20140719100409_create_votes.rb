class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :point_id
      t.integer :kind, default: 0

      t.timestamps
    end

    add_index :votes, :user_id
    add_index :votes, :point_id
    add_index :votes, [:user_id, :point_id], unique: true
  end
end
