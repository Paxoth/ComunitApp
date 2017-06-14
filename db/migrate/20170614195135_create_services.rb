class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.references :specialty, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
