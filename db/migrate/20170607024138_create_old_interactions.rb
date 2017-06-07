class CreateOldInteractions < ActiveRecord::Migration[5.0]
  def change
    create_table :old_interactions do |t|
      t.integer :connect_id
      t.text :description

      t.timestamps

    end
  end
end
