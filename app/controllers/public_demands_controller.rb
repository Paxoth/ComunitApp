class PublicDemandsController < ApplicationController
	before_action :set_public_demand, only: [:show, :edit, :update, :destroy]

	# GET /public_demands
	# GET /public_demands.json
	def index
		@public_demands = PublicDemand.all
	end

	# GET /public_demands/1
	# GET /public_demands/1.json
	def show
	end

	# GET /public_demands/new
	def new
		@public_demand = PublicDemand.new
	end

	# GET /public_demands/1/edit
	def edit
	end

	# POST /public_demands
	# POST /public_demands.json
	def create
		@public_demand = PublicDemand.new(:user_id => params[:user_id], :demand_id => params[:demand_id])
		respond_to do |format|
			if @public_demand.save
				format.html { redirect_to demand_path(params[:demand_id]), notice: 'Public demand was successfully created.' }
				format.json { render :show, status: :created, location: @public_demand }
			else
				format.html { render :new }
				format.json { render json: @public_demand.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /public_demands/1
	# PATCH/PUT /public_demands/1.json
	def update
		respond_to do |format|
			if @public_demand.update(public_demand_params)
				format.html { redirect_to @public_demand, notice: 'Public demand was successfully updated.' }
				format.json { render :show, status: :ok, location: @public_demand }
			else
				format.html { render :edit }
				format.json { render json: @public_demand.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /public_demands/1
	# DELETE /public_demands/1.json
	def destroy
		@public_demand.destroy
		respond_to do |format|
			format.html { redirect_to public_demands_url, notice: 'Public demand was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_public_demand
			@public_demand = PublicDemand.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def public_demand_params
			params.require(:public_demand).permit(:user_id, :demand_id)
		end
end
