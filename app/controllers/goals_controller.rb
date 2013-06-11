class GoalsController < ApplicationController
   def new
     @user = User.find(params[:user_id])
     @goal = Goal.new
   end

  def create
    @user = User.find(params[:user_id])
    @goal = Goal.new(params[:goal])
    if @goal.save 
      redirect_to user_goals_path, :notice => "Your new goal is saved"
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
    
  end

  # def show
  #   @goal = Goal.find(params[:id])
  # end

   def edit
     @user = User.find(params[:user_id])
     @goal = Goal.find(params[:id])
   end

  def update
    if params[:commit].eql?("Cancel")
      #redirect_to user_goals_path, :notice => "Edits not saved"
      redirect_to user_goals_path, :flash => { :alert => "Edits not saved" }
      return nil
    else
      @goal = Goal.find(params[:id])
      if @goal.update_attributes(params[:goal])
        redirect_to user_goals_path, :notice => "Your goal was edited"
      else
        render :edit, :notice => "Apologies, failed to save. Please try again soon."
      end
    end  
  end    
  

  def destroy
    @user = User.find(params[:user_id])
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to user_goals_path, :notice => "Goal was deleted."
  end

  def index
    @user = User.find(params[:user_id])
    @goals = Goal.all
    @goal = Goal.new
  end
end


