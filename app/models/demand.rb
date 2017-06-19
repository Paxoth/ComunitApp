class Demand < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  belongs_to :community
  has_many :licitations
  has_many :public_demands
end
