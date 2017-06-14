class AddSpecialtyToUser < ActiveRecord::Migration
  def change
    add_reference :users, :specialty, index: true, foreign_key: true
  end
end
