class UsersController < ApplicationController
	
def new
	@user = User.new
end
  
def create
 @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end


def index
	@users = User.all.to_a
end

def show
	begin
		@user = User.find(params[:id])
	rescue
		head :not_found
	end
end


def update
	begin
		@user = User.find(params[:id])

		if @user.update_attributes(params[:user])
			render :show
		else
			render :errors, status: :unprocessable_entity
		end
	rescue 
		head :not_found
	end
end


def destroy
	begin
		@user = User.find params[:id]
		@user.destroy

		head :no_content
	rescue
		head :not_found
	end
end
end

