class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :identifier

      t.timestamps
    end

    add_index :users, :identifier, unique: true
  end
end
