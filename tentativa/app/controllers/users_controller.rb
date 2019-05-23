class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new()
		@gender = Gender.all.collect{|gender| [gender.name, gender.id]}
		@group = Group.all.collect{|group| [group.name, group.id]}
	end
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end
	def show
		@user = User.find(params[:id])
		@groupName = Group.find(@user.group_id).name
		@genderName = Gender.find(@user.gender_id).name
	end
	def edit
		@user = User.find(params[:id])
		@gender = Gender.all.collect{|gender| [gender.name, gender.id]}
		@group = Group.all.collect{|group| [group.name, group.id]}
	end
	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to users_path
		else
			render 'edit'
		end
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	private

	def user_params
		params.require(:user).permit(:name, :nickname, :email, :dateOfBirth, :level, :birthLocation, :coins, :gender_id, :group_id)
	end
end