class AddStoryIdToStoryWriters < ActiveRecord::Migration[5.2]
  def change
    add_column :story_writers, :story_id, :integer
  end
end
