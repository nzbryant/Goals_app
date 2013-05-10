class UsersController < ApplicationController
	respond_to :json

def index
	@users = User.all.to_a
end

def show
	begin
		@user = User.find params[:id]
	rescue
		head :not_found
	end
end

def create
	@user = User.create params[:id]

	if @user.save
		render :show
	else
		render :errors, status: :unprocessable_entity
	end
end

def update
end

def destroy
end



end

