class RemoveTextFromHunkyDoryChanges < ActiveRecord::Migration[5.1]
  def change
    remove_column :hunky_dory_changes, :text
  end
end
