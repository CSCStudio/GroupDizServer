class CreateTopicsParticipants < ActiveRecord::Migration
  def change
    create_table :topics_participants do |t|
    	t.references :topic
    	t.references :user
    end

    add_index :topics_participants, :user_id
    add_index :topics_participants, :topic_id
    
    add_index :topics_participants, [:topic_id, :user_id], unique: true
  end
end
