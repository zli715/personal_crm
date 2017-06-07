class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.integer :user_id
      t.integer :contact_id
      t.text :how_we_met
      t.date :when_we_met

      t.timestamps

    end
  end
end
