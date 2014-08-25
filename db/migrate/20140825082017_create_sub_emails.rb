class CreateSubEmails < ActiveRecord::Migration
  def change
    create_table :sub_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
