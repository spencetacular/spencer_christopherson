class AddTechnologyToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :technology, :text
  end
end
