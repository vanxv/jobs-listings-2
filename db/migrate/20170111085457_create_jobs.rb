class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :rake
      t.migrate :db

      t.timestamps
    end
  end
end
