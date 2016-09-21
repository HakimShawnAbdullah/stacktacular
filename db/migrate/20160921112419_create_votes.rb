class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :type_of_vote, null: false
      t.references :votable, polymorphic: true, index: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
