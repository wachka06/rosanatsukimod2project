class CreateWriterLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :writer_languages do |t|
      t.integer :writer_id
      t.integer :language_id

      t.timestamps
    end
  end
end
