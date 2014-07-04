class SourcesController < ApplicationController
  before_action :set_source, only: [:show, :edit, :update, :destroy]

  def index
    @sources = Source.all
  end

  def show
    @examples = Example.with_source_id(params[:id])
    @quotes = Quote.with_source_id(params[:id])
  end

  def new
    @source = Source.new
  end

  def edit
  end

  def create
    @source = Source.new(source_params)
      if @source.save
        redirect_to @source, notice: 'Source was successfully created.' 
      else
        render :new 
      end
  end

  def update
      if @source.update(source_params)
        redirect_to @source, notice: 'Source was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @source.destroy
      redirect_to sources_url, notice: 'Source was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_source
      @source = Source.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def source_params
      params.require(:source).permit(:medium, :name, :subject)
    end
end
