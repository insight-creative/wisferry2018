class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :body
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
