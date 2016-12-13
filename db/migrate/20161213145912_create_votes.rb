class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.boolean :upvote
      t.integer :user_id
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
