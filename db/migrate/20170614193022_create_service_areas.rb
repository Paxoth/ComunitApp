class CreateServiceAreas < ActiveRecord::Migration
  def change
    create_table :service_areas do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
