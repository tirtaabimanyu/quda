class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.belongs_to :job, foreign_key: true
      t.datetime :in
      t.datetime :out

      t.timestamps
    end
  end
end
