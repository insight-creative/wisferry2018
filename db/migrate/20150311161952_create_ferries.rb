class CreateFerries < ActiveRecord::Migration
  def change
    create_table :ferries do |t|
      t.string :location
      t.datetime :time
      t.timestamps null: false
    end
  end
end
