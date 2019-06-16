class HabilitiesController < ApplicationController
	def index
		@habilities = Hability.all
	end
	def new
		@hability = Hability.new()
	end
	def create
		@hability = Hability.new(hability_params)
		if @hability.save
			redirect_to habilities_path
		else
			render 'new'
		end
	end
	def edit
		@hability = Hability.find(params[:id])
	end
	def update
		@hability = Hability.find(params[:id])
		if @hability.update(hability_params)
			redirect_to hability_path(params[:id])
		else
			render 'edit'
		end
	end
	def show
		@hability = Hability.find(params[:id])
	end
	def destroy
		@hability = Hability.find(params[:id])
		@hability.destroy
		redirect_to habilities_path
	end

	private

	def hability_params
		params.require(:hability).permit(:name, :dmgPercent, :defPercent, :maxHabilityLevel, :minUserLevel, :extraDmgPercent, :extraDefPercent, :levelsForUpgrade, :habilityClass, :habilitySubclass)
	end

end
