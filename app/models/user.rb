class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	belongs_to :specialty
	belongs_to :community
	has_many :demands
	has_many :licitations
	has_many :public_demands
	
end
