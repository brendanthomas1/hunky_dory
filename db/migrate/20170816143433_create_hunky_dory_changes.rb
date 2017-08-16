class CreateHunkyDoryChanges < ActiveRecord::Migration[5.1]
  def change
    create_table :hunky_dory_changes do |t|
      t.string :summary
      t.text :text

      t.timestamps
    end
  end
end
