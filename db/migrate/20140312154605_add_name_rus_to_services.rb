class AddNameRusToServices < ActiveRecord::Migration
  def change
    add_column :services, :name_rus, :string
  end
end
