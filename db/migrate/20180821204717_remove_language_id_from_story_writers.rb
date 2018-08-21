class RemoveLanguageIdFromStoryWriters < ActiveRecord::Migration[5.2]
  def change
    remove_column :story_writers, :language_id
  end
end
