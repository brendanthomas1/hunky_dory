class AddDescriptionsToHunkyDoryChanges < ActiveRecord::Migration[5.1]
  def change
    add_column :hunky_dory_changes, :before_description, :text, limit: 10_000, default: "", null: false
    add_column :hunky_dory_changes, :after_description, :text, limit: 10_000, default: "", null: false

    change_column :hunky_dory_changes, :summary, :string, limit: 255, default: '', null: false
  end
end
