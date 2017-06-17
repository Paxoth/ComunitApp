class Demand < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  belongs_to :community
end
