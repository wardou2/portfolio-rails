class AddContributionToGithubs < ActiveRecord::Migration[5.2]
  def change
    add_column :githubs, :contribution, :string
  end
end
