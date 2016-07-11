class AddLeakedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :leaked, :boolean, :default => false
  end
end
