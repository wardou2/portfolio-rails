class CreateGithubs < ActiveRecord::Migration[5.2]
  def change
    create_table :githubs do |t|
      t.string :repo_owner
      t.string :repo_name
      t.string :img_url
      t.string :summary
      t.integer :user_id

      t.timestamps
    end
  end
end
