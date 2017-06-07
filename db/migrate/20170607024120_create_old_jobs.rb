class CreateOldJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :old_jobs do |t|
      t.integer :user_id

      t.timestamps

    end
  end
end
