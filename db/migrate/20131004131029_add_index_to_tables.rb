class AddIndexToTables < ActiveRecord::Migration
  def change
    add_index :feature_technologies, :feature_id
    add_index :feature_technologies, :technology_id

    add_index :features, :user_project_id

    add_index :project_technologies, :project_id
    add_index :project_technologies, :technology_id

    add_index :repos, :user_id
    add_index :repos, :project_id

    add_index :snippets, :feature_id

    add_index :user_projects, :project_id
    add_index :user_projects, :user_id

  end
end
