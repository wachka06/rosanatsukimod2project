class CreateStoryLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :story_languages do |t|
      t.integer :story_id
      t.integer :language_id

      t.timestamps
    end
  end
end
