class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(params[:goal])
    if @goal.save 
      redirect_to goals_path
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end

    # def create
    # @client = Client.new(params[:client])
    # if @client.save
    #   redirect_to @client
    # else
    #   # This line overrides the default rendering behavior, which
    #   # would have been to render the "create" view.
    #   render :action => "new"
    # end
    
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @goals = Goal.all
  end
end
