class RelationshipsController < ApplicationController


	def create
		user = User.find(params[:follow_id])
		following = current_user.follow(user)
	    redirect_to user
	end

	def destroy
		user = User.find(params[:follow_id])
		following = current_user.unfollow(user)
		redirect_to user
    end



end
