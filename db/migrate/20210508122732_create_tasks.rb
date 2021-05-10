class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :position
      t.boolean :is_done
      t.timestamps
    end
  end
end
