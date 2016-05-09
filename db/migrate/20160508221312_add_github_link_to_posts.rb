class AddGithubLinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :github_link, :string
  end
end
