class AddColumnsToProjectsTable < ActiveRecord::Migration
  def change
    add_column :projects, :artist, :string
    add_column :projects, :anticipated_release_date, :date
  end
end
