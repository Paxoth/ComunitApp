class Service < ActiveRecord::Base
  belongs_to :specialty
  has_many :demands
end
