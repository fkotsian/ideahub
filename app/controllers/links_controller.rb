class LinksController < ApplicationController
  def index
    @links = Link.where(idea_id: params[:idea_id])
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to @link.idea
    else
      flash.now[:errors] = @idea.errors.full_messages
      render @link.idea
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.try(:update_attributes, link_params)
      redirect_to @link.idea
    else
      flash.now[:errors] = @link.errors.full_messages
      render @link.idea
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    redirect_to @link.idea
  end

  private
  def link_params
    params.require(:link).permit(:title, :url, :notes, :idea_id)
  end
end
