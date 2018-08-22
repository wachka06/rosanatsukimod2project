class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :beginning
      t.string :development
      t.string :twist
      t.string :conclusion

      t.timestamps
    end
  end
end
