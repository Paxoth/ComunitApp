class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update]
	def show
	end
	def edit
	end
	def community
		@communities = Community.all
		@user = User.find(params[:id])
	end


	def update
		# authorize! :update, @user
		respond_to do |format|
			if @user.update(user_params)
				sign_in(@user == current_user ? @user : current_user, :bypass => true)
				format.html { redirect_to @user, notice: 'El perfil se ha actualizado correctamente.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end

	private
	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:name, :address, :community_id,:description)

	end
end
