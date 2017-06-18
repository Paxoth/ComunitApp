class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_action :set_publications
	before_action :set_specialties
	before_action :set_demands

	def set_publications
		@publications = Publication.all
	end

	def set_specialties
		@specialties = Specialty.all
	end

	def set_demands
		@demands = Demand.all
	end
end
