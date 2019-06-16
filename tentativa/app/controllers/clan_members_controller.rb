class ClanMembersController < ApplicationController
	def index
		@cmbs = ClanMember.all
		@users = User.all
	end
	def new
		@cmbs = ClanMember.new()
		@clan = Clan.all.collect{|clan| [clan.name, clan.id]}
		@user = User.all.collect{|user| [user.name, user.id]}
	end
	def create
		@cmbs = ClanMember.new(cmbs_params)
		if @cmbs.save
			redirect_to clan_members_path
		else
			render 'new'
		end
	end
	def show
		@cmbs = ClanMember.find(params[:id])
		@userName = User.find(@cmbs.user_id).name
		@clanName = Clan.find(@cmbs.clan_id).name
	end
	def edit
		@cmbs = ClanMember.find(params[:id])
		@clan = Clan.all.collect{|clan| [clan.name, clan.id]}
		@user = User.all.collect{|user| [user.name, user.id]}
	end
	def update
		@cmbs = ClanMember.find(params[:id])
		if @cmbs.update(cmbs_params)
			redirect_to clan_members_path(params[:id])
		else
			render 'edit'
		end
	end
	def destroy
		@cmbs = ClanMember.find(params[:id])
		@cmbs.destroy
		redirect_to clan_members_path
	end

	private

	def cmbs_params
		params.require(:clan_member).permit(:user_id, :clan_id, :isLeager, :acceptedInvite)
	end
end
