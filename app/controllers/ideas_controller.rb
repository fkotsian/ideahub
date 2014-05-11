class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find(params[:id])
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to @idea
    else
      flash.now[:errors] = @idea.errors.full_messages
      render @idea
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.try(:update_attributes, idea_params)
      redirect_to @idea
    else
      flash.now[:errors] = @idea.errors.full_messages
      render @idea
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy

    redirect_to ideas_url
  end

  private
  def idea_params
    params.require(:idea).permit(:title, :why, :copy)
  end

  def link_params
    params.require(:link).permit(:title, :url, :notes, :idea_id)
  end
end
