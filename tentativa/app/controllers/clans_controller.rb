class ClansController < ApplicationController
	def index
		@clans = Clan.all
	end
	def new
		@clan = Clan.new()
	end
	def create
		@clan = Clan.new(clan_params)
		if @clan.save
			redirect_to clans_path
		else
			render 'new'
		end
	end
	def show
		@clan = Clan.find(params[:id])
	end
	def edit
		@clan = Clan.find(params[:id])
	end
	def update
		@clan = Clan.find(params[:id])
		if @clan.update(clan_params)
			redirect_to clan_path(params[:id])
		else
			render 'edit'
		end
	end
	def destroy
		@clan = Clan.find(params[:id])
		@clan.destroy
		redirect_to clans_path
	end

	private

	def clan_params
		params.require(:clan).permit(:name, :deadline)
	end
end
