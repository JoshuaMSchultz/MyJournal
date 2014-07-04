class ThoughtsController < ApplicationController
  before_action :set_thought, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @thoughts = Thought.all
  end
  
  def show
    @sources = Source.all
  end

  def new
    @thought = Thought.new
  end

  def edit
  end

  def create
    @thought = Thought.new(thought_params)
      if @thought.save
        redirect_to @thought, notice: 'Thought was successfully created.' 
      else
        render :new 
      end
  end

  def update
      if @thought.update(thought_params)
        redirect_to @thought, notice: 'Thought was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @thought.destroy
    redirect_to thoughts_url, notice: 'Thought was successfully destroyed.'

  end
  
  def history
    @versions = Thought.find(params[:id]).versions
  end
  
  


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thought
      @thought = Thought.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thought_params
      params.require(:thought).permit(:title, :body, :example_id, :topic_id, :tag_list)
    end
    
end
