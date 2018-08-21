class AddDevelopmentToStories < ActiveRecord::Migration[5.2]
  def change
    add_column :stories, :development, :string
  end
end
