class DropUserProjectsTable < ActiveRecord::Migration
  def up
    drop_table :user_projects
  end

  def down
    create_table :user_projects do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
