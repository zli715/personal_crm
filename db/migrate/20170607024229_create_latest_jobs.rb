class CreateLatestJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :latest_jobs do |t|
      t.string :job_description
      t.date :date
      t.integer :user_id

      t.timestamps

    end
  end
end
