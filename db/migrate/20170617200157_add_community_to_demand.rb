class AddCommunityToDemand < ActiveRecord::Migration
  def change
    add_reference :demands, :community, index: true, foreign_key: true
  end
end
