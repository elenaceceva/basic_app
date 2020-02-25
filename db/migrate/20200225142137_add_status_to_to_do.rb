class AddStatusToToDo < ActiveRecord::Migration[5.1]
  def change
    add_column :to_dos, :status, :boolean, default: false
  end
end
