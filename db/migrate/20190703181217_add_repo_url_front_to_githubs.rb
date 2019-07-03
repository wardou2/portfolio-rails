class AddRepoUrlFrontToGithubs < ActiveRecord::Migration[5.2]
  def change
    remove_column :githubs, :repo_url
    
    add_column :githubs, :repo_url_front, :string
    add_column :githubs, :repo_url_back, :string
    add_column :githubs, :demo_url, :string
  end
end
