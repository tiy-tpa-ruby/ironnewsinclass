class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :link
      t.string :email

      t.timestamps
    end
  end
end
