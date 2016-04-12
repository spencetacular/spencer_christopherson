class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :title
      t.references :post

      t.timestamps null: false
    end
  end
end
