class CreateLatestInteractions < ActiveRecord::Migration[5.0]
  def change
    create_table :latest_interactions do |t|
      t.date :date
      t.string :interaction
      t.integer :connect_id

      t.timestamps

    end
  end
end
