class Licitation < ActiveRecord::Base
  belongs_to :user
  belongs_to :demand
end
