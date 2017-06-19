class CreatePublicDemands < ActiveRecord::Migration
  def change
    create_table :public_demands do |t|
      t.references :user, index: true, foreign_key: true
      t.references :demand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
