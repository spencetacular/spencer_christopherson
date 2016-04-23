class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_link
      t.string :link
      t.string :github_link
      t.integer :priority

      t.timestamps null: false
    end
  end
end
