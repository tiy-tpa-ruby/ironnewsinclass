class AddCoverImageToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :cover_image_id, :string
  end
end
