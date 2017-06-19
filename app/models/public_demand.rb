class PublicDemand < ActiveRecord::Base
  belongs_to :user
  belongs_to :demand
end
