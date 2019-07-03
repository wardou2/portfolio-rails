class RemoveContributionFromGithubs < ActiveRecord::Migration[5.2]
  def change
    remove_column :githubs, :contribution

    add_column :githubs, :contribution, :string, array: true, default: []
  end
end
