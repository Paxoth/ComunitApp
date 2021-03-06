class CreateLicitations < ActiveRecord::Migration
  def change
    create_table :licitations do |t|
      t.integer :mount
      t.text :description
      t.integer :status
      t.integer :votes
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, index: true, foreign_key: true
      t.references :demand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
