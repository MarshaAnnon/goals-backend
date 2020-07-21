class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

    def index
      @goals = Goal.all
      render json: @goals.as_json
    end

  def show
    @goal = Goal.find_by_id(params[:id])
    render json: @goal.as_json
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      render json: @goal.as_json
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end  

  def update
    if @goal.update(goal_params)
      render json: @goal.as_json
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @goal.destroy
  end

  private

    def set_goal
      @goal = Goal.find_by_id(params[:id])
    end

    def goal_params
      params.require(:goal).permit(
        :id, 
        :goal_name,
        :goal_description,
        :goal_timeline
       )
    end
end
