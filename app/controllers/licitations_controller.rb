class LicitationsController < ApplicationController
	before_action :set_licitation, only: [:show, :edit, :update, :destroy]

	# GET /licitations
	# GET /licitations.json
	def index
		@licitations = Licitation.all
	end

	# GET /licitations/1
	# GET /licitations/1.json
	def show
	end

	# GET /licitations/new
	def new
		@licitation = Licitation.new
		@demand = Demand.find(params[:id])
	end

	# GET /licitations/1/edit
	def edit
	end

	# POST /licitations
	# POST /licitations.json
	def create
		@licitation = current_user.licitations.new(licitation_params)
		respond_to do |format|
			if @licitation.save
				format.html { redirect_to @licitation.demand, notice: 'Licitation was successfully created.' }
				format.json { render :show, status: :created, location: @licitation }
			else
				format.html { render :new }
				format.json { render json: @licitation.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /licitations/1
	# PATCH/PUT /licitations/1.json
	def update
		respond_to do |format|
			if @licitation.update(licitation_params)
				format.html { redirect_to @licitation, notice: 'Licitation was successfully updated.' }
				format.json { render :show, status: :ok, location: @licitation }
			else
				format.html { render :edit }
				format.json { render json: @licitation.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /licitations/1
	# DELETE /licitations/1.json
	def destroy
		@licitation.destroy
		respond_to do |format|
			format.html { redirect_to licitations_url, notice: 'Licitation was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_licitation
			@licitation = Licitation.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def licitation_params
			params.require(:licitation).permit(
				:mount, 
				:description, 
				:status, 
				:votes,
				:start_time, 
				:end_time, 
				:user_id, 
				:demand_id
			)
		end
end
