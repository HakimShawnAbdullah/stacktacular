class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :content, null: false
      t.references :responsive, polymorphic: true, index: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
