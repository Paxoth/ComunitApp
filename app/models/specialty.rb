class Specialty < ActiveRecord::Base
	has_many :services
	has_many :users
end
