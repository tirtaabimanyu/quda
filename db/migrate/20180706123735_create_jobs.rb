class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.integer :target
      t.integer :current, default: 0
      t.datetime :check_in
      t.string :status, default: "OUT"

      t.timestamps
    end
  end
end
