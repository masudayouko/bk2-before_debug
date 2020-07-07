class RelationshipsController < ApplicationController
	before_action :set_user

	def create
		user = User.find(params[:follow_id])
		following = current_user.follow(user)
		following.save
	    redirect_to @user
	end

	def destroy
		user = User.find(params[:follow_id])
		following = current_user.unfollow(user)
		following.destroy
		redirect_to @user
    end



end
