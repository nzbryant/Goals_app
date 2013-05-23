class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(params[:goal])
    if @goal.save 
      redirect_to goals_path, :notice => "Your new goal is saved"
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
    
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update_attributes(params[:goal])
      redirect_to goals_path, :notice => "Your goal was edited"
    else
      render :edit, :notice => "Apologies, failed to save. Please try again soon."
    end
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to goals_path, :notice => "Goal was deleted."
  end

  def index
    @goals = Goal.all
  end
end
