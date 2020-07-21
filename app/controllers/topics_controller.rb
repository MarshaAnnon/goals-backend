class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /topics
  # GET /topics.json
  def index
    @topics = Topic.all
    render json: @topics.as_json(include: {goals: {only: [:id, :goal_name, :goal_description, :goal, :goal_timeline]}})
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
    @topic = Topic.find_by_id(params[:id])
    render json: @topic.as_json(include: {goals: {only: [:id, :goal_name, :goal_description, :goal, :goal_timeline]}})
  end

  # GET /topics/new
  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      render json: @topic.as_json(include: {goals: {only: [:id, :goal_name, :goal_description, :goal, :goal_timeline]}})
    else
      render json: @topic.errors, status: :unprocessable_entity
    end
  end  

  def update
    if @topic.update(topic_params)
      render json: @topic.as_json(include: {goals: {only: [:id, :goal_name, :goal_description, :goal, :goal_timeline]}})
    else
      render json: @topic.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @topic.destroy
  end

  private

    def set_topic
      @topic = Topic.find_by_id(params[:id])
    end

    def topic_params
      params.require(:topic).permit(
        :id, 
        :name, 
        :goals_attributes => [:id, :goal_name, :goal_description, :goal_timeline]
       )
    end
end
