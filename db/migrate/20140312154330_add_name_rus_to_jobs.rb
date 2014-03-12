class AddNameRusToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :name_rus, :string
  end
end
