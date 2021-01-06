class CreateTaskusers < ActiveRecord::Migration[5.2]
  def change
    create_table :taskusers do |t|
      t.integer :userid
      t.string :title

      t.timestamps
    end
  end
end
