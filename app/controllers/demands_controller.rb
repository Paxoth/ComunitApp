class DemandsController < ApplicationController
	before_action :set_demand, only: [:show, :edit, :update, :destroy]

	# GET /demands
	# GET /demands.json
	def index
		@demands = Demand.all
	end

	# GET /demands/1
	# GET /demands/1.json
	def show
	end

	# GET /demands/new
	def new
		@demand = Demand.new
		@services = Service.all
	end

	# GET /demands/1/edit
	def edit
	end

	# POST /demands
	# POST /demands.json
	def create
		@demand = current_user.demands.new(demand_params)

		respond_to do |format|
			if @demand.save
				if @demand.demand_type == 0
					@demand.community_id = current_user.community_id
					@demand.save
				end
				format.html { redirect_to @demand, notice: 'Demand was successfully created.' }
				format.json { render :show, status: :created, location: @demand }
			else
				format.html { render :new }
				format.json { render json: @demand.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /demands/1
	# PATCH/PUT /demands/1.json
	def update
		respond_to do |format|
			if @demand.update(demand_params)
				format.html { redirect_to @demand, notice: 'Demand was successfully updated.' }
				format.json { render :show, status: :ok, location: @demand }
			else
				format.html { render :edit }
				format.json { render json: @demand.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /demands/1
	# DELETE /demands/1.json
	def destroy
		@demand.destroy
		respond_to do |format|
			format.html { redirect_to demands_url, notice: 'Demand was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_demand
			@demand = Demand.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def demand_params
			params.require(:demand).permit(:title, 
				:description, 
				:status, 
				:demand_type, 
				:start_date, 
				:user_id, 
				:service_id,
				:community_id)
		end
end
