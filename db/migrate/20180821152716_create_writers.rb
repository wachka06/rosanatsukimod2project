class CreateWriters < ActiveRecord::Migration[5.2]
  def change
    create_table :writers do |t|
      t.string :pen_name
      t.string :password

      t.timestamps
    end
  end
end
