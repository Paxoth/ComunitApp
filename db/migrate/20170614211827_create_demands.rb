class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :demand_type
      t.datetime :start_date
      t.references :user, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
