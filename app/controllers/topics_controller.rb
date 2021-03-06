class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    @topics = Topic.all
  end

  def show
    @thoughts = Thought.with_topic_id(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = Topic.new(topic_params)
      if @topic.save
        redirect_to @topic, notice: 'Topic was successfully created.' 
      else
        render :new 
      end
  end

  def update
      if @topic.update(topic_params)
        redirect_to @topic, notice: 'Topic was successfully updated.'
      else
        render :edit 
      end
  end

  def destroy
    @topic.destroy
      redirect_to topics_url, notice: 'Topic was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:name)
    end
end
