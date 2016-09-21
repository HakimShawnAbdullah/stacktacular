class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title, null: false
      t.string :content, null: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
